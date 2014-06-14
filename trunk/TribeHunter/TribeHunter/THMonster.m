//
//  THMonster.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMonster.h"
#import "THAnimation.h"
#import "THCore.h"
#import "Skills.h"
#import "Macros.h"
#import "THWeapon.h"
#import "THPlant.h"
#import "THSound.h"

@implementation THMonster {
    NSString* _currentAnimAction;
    THAnimation* _animation;
    CCLayerColor* _aliveBar;
    float _aliveBarWidth;
    CCLayerColor* _hpbar;
    float _dieTimer;
    
    THSkillInfo* _autoSkill;
    float _autoCD;
    
    THSkillCDInfo* _skillTable;
    float _attackTimer;
}

+ (THMonster*)monsterWithInfo:(THMonsterInfo*)monsterInfo
                       region:(int)region {
    return [[self alloc] initWithInfo:monsterInfo region:region];
}

- (id)initWithInfo:(THMonsterInfo*)monsterInfo
            region:(int)region {
    if (self=[super init]) {
        _type = kGameObjectTypeMonster;
        
        _info = monsterInfo;
        
        self.baseAttributes = monsterInfo.attributes;
        self.currentAttributes = monsterInfo.attributes;
        
        _x = 550 - (arc4random() % 60);
        _y = region;
        
        [[[THCore sharedCore] assetMgr] loadAnimationAsset:monsterInfo.animName];
        _animation = [[[THCore sharedCore] assetMgr] createAnimation:monsterInfo.animName];
        _animation.sprite.position = CGPointMake(_x, R2P(_y));
        _appearance = _animation.sprite;
        
        _aliveBarWidth = [_appearance boundingBox].size.width;
        _hpbar = [CCLayerColor layerWithColor:ccc4(0, 0, 0, 255)];
        [_hpbar setContentSize: CGSizeMake(_aliveBarWidth, 6)];
        [_appearance addChild:_hpbar];
        
        _aliveBar = [CCLayerColor layerWithColor:ccc4(50, 255, 50, 255)];
        [_aliveBar setContentSize:CGSizeMake(_aliveBarWidth-2, 4)];
        [_hpbar addChild:_aliveBar];
        _aliveBar.position = CGPointMake(1, 1);
        
        _dieTimer = 0.;
        
        _autoSkill = [[SDMeleeAttack alloc] init];
        _autoCD = 0.;
        
        NSMutableArray* _specialSkills = [NSMutableArray array];
        if (_info.skills.count > 0) {
            for (Class skillClass in _info.skills) {
                [_specialSkills addObject:[[skillClass alloc] init]];
            }
        }

        _skillTable = [[THSkillCDInfo alloc] initWithSkills:_specialSkills];
    }
    return self;
}


- (void)update:(double)delta {
    [super update:delta];
    [_info update:delta];
    
    if (_timer < FADE_IN_TIME) {
        _appearance.opacity = 255 * _timer / FADE_IN_TIME;
    } else {
        _appearance.opacity = 255;
    }
    
    if (_currentAttributes.HP <= 0) {
        if (_dieTimer == 0.) {
            [_animation playDie];
            //[THSound playEffect:@"die.wav" loop:NO];
        }
        _dieTimer += delta;
    } else {
        _autoCD -= delta;
        _attackTimer -= delta;
        [_skillTable update:delta];
        THSkillInfo* skill;
        THGame* game = [[THCore sharedCore] game];
        
        NSArray* autoTargets = [_autoSkill findTargets:[[[THCore sharedCore] game]
                                                    filterGameObjectsWithTypes:kGameObjectTypeHero | kGameObjectTypePlant]
                                                   atX:_x
                                                   atY:_y
                                         direction:kWeaponDirectionLeft];
        if ([autoTargets count] > 0) {
            if (_autoCD < 0.) {
                _autoCD = _autoSkill.coolDown;
                [_autoSkill attackTargets:autoTargets owner:self];
                _currentAnimAction = @"attack";
                [_animation playAnim:_currentAnimAction];
            }
        } else if ((skill = [_skillTable getFirstReadySkill])) {
            float _weaponX = _x;
            if ([skill isMemberOfClass:[SDHellFireAttack class]]) {
                _weaponX = 85.;
                
                int safeRow = arc4random() % 6;
                
                for (int _weaponY = 0; _weaponY < 6; _weaponY++) {
                    if (RANDOM(2, 3)
                        && _weaponY != safeRow) {
                        THWeapon* weapon = [[THWeapon alloc] initWithSkill:skill
                                                                         x:_weaponX
                                                                         y:_weaponY
                                                                     owner:self
                                                                 direction:kWeaponDirectionLeft
                                                               targetTypes:kGameObjectTypeHero];
                        [game addGameObject:weapon];
                    }
                }
                
                [_skillTable startCDSkill:skill];
                _currentAnimAction = [_info.animActionPrefix stringByAppendingString:@"hellfire"];
                [_animation playAnim:_currentAnimAction];
                _attackTimer = .5;
                
            } else if ([skill isMemberOfClass:[SDDestroyPlant class]]) {
                NSArray* plants = [game filterGameObjectsWithTypes:kGameObjectTypePlant];
                for (THPlant* plant in plants) {
                    THWeapon* weapon = [[THWeapon alloc] initWithSkill:skill
                                                                     x:plant.x
                                                                     y:plant.y
                                                                 owner:self
                                                             direction:kWeaponDirectionLeft
                                                           targetTypes:kGameObjectTypePlant];
                    [game addGameObject:weapon];
                }
                
                if (plants.count > 0) {
                    [_skillTable startCDSkill:skill];
                    _currentAnimAction = [_info.animActionPrefix stringByAppendingString:@"destroyplant"];
                    [_animation playAnim:_currentAnimAction];
                    _attackTimer = .5;
                } else {
                    [_skillTable startCDSkill:skill];
                }
            } else {
                THWeapon* weapon = [[THWeapon alloc] initWithSkill:skill
                                                                 x:_weaponX
                                                                 y:_y
                                                             owner:self
                                                         direction:kWeaponDirectionLeft
                                                       targetTypes:kGameObjectTypeHero | kGameObjectTypePlant];
                [game addGameObject:weapon];
                
                [_skillTable startCDSkill:skill];
                
                if ([skill isMemberOfClass:[SDBossSummon class]]) {
                    _currentAnimAction = [_info.animActionPrefix stringByAppendingString:@"summon"];
                } else {
                    _currentAnimAction = [_info.animActionPrefix stringByAppendingString:@"attack"];
                }
                
                [_animation playAnim:_currentAnimAction];
                _attackTimer = .5;
            }
            
        } else if (_timer > BUFFER_TIME
                   && _attackTimer < 0.) {
            _x -= self.currentAttributes.speed;
            
            _appearance.position = CGPointMake(_x, R2P(_y));
            
            if (![_currentAnimAction isEqualToString:[_info.animActionPrefix stringByAppendingString:_info.animActionName]]) {
                _currentAnimAction = [_info.animActionPrefix stringByAppendingString:_info.animActionName];
                [_animation playAnim:_currentAnimAction];
            }
        }
    }
    
    [self displayEffects];
    
    _needToRemove = (_currentAttributes.HP <= 0 && _dieTimer > 2.) || OUT(_x - 30, _y);
    
    if (_aliveBar != nil) {
        _aliveBar.contentSize = CGSizeMake((float)_currentAttributes.HP* (_aliveBarWidth-2)/(float)(_baseAttributes.HP), _aliveBar.contentSize.height);
        if (_aliveBar.contentSize.width <= 0) {
            [_hpbar removeChild:_aliveBar];
            [_appearance removeChild:_hpbar];

        }
    }
    
    _hpbar.position = ccp((_appearance.contentSize.width - _hpbar.contentSize.width) * .5, _appearance.contentSize.height / 2 + 22);
}

- (void)displayEffects {
    for (int i = _info.effects.count - 1; i >= 0; i--) {
        THEffectInfo* effect = _info.effects[i];
        if ([effect isMemberOfClass:[SESlowDown class]]) {
            _appearance.color = ccc3(0,0,255);
            return;
        }
        
        if ([effect isMemberOfClass:[SEPoison class]]) {
            _appearance.color = ccGREEN;
            return;
        }
    }
    _appearance.color = ccWHITE;
}

@end
