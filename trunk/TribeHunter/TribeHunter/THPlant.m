//
//  THPlant.m
//  TribeHunter
//
//  Created by Student on 4/13/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THPlant.h"
#import "Skills.h"
#import "THAnimation.h"
#import "THCore.h"
#import "THWeapon.h"

@implementation THPlant {
    int _targetY;
    THSkillInfo* _autoSkill;
    float _autoCD;
    THAnimation* _animation;
    
    CCLayerColor* _aliveBar;
    float _aliveBarWidth;
    CCLayerColor* _hpbar;
}

- (id)initWithX:(float)x
              y:(int)y {
    if (self = [super init]) {
        _type = kGameObjectTypePlant;
        
        _x = x;
        _y = y;
        
        // temp attributes
        _baseAttributes = [[THAttributes alloc] init];
        _baseAttributes.HP = 40;
        _baseAttributes.attackPower = 25;
        
        _currentAttributes = [[THAttributes alloc] init];
        _currentAttributes.HP = 40;
        _currentAttributes.attackPower = 25;
        // ===
        
        _autoSkill = [[SDPlantAttack alloc] init];
        _autoCD = 0.;
        
        [[[THCore sharedCore] assetMgr] loadAnimationAsset:@"plant"];
        _animation = [[[THCore sharedCore] assetMgr] createAnimation:@"plant"];
        
        _animation.sprite.position = CGPointMake(_x, R2P(_y));
        [_animation playAnim:@"walk"];
        _appearance = _animation.sprite;
        
        _aliveBarWidth = [_appearance boundingBox].size.width;
        _hpbar = [CCLayerColor layerWithColor:ccc4(0, 0, 0, 255)];
        [_hpbar setContentSize: CGSizeMake(_aliveBarWidth, 7)];
        [_appearance addChild:_hpbar];
        
        _aliveBar = [CCLayerColor layerWithColor:ccc4(50, 255, 50, 255)];
        [_aliveBar setContentSize:CGSizeMake(_aliveBarWidth-2, 5)];
        [_hpbar addChild:_aliveBar];
        _aliveBar.position = CGPointMake(1, 1);
    }
    return self;
}

- (void)update:(double)delta {
    [super update:delta];
    
    THGame* game = [[THCore sharedCore] game];
    
    // 自动射击
    _autoCD -= delta;
    if (_autoCD < 0.) {
        _autoCD = _autoSkill.coolDown;
        
        NSArray* targets = [_autoSkill findTargets:[game filterGameObjectsWithTypes:kGameObjectTypeMonster]
                                               atX:self.x
                                               atY:self.y
                                         direction:kWeaponDirectionRight];
        
        if (targets.count > 0) {
            THGameObject* firstTarget = (THGameObject*)targets[0];
            THWeapon* weapon = [[THWeapon alloc] initWithSkill:_autoSkill
                                                             x:firstTarget.x
                                                             y:self.y
                                                         owner:self
                                                     direction:kWeaponDirectionRight
                                                   targetTypes:kGameObjectTypeMonster];
            
            [[[THCore sharedCore] game] addGameObject:weapon];
            [_animation playOnce:@"attack"];
        }
    }
    
    _needToRemove = (_currentAttributes.HP <= 0) || OUT(_x - 30, _y);
    
    
    if (_aliveBar != nil) {
        _aliveBar.contentSize = CGSizeMake((float)_currentAttributes.HP* (_aliveBarWidth-2)/(float)(_baseAttributes.HP), _aliveBar.contentSize.height);
        if (_aliveBar.contentSize.width <= 0) {
            [_hpbar removeChild:_aliveBar];
            [_appearance removeChild:_hpbar];
            
        }
    }
    
    _hpbar.position = ccp((_appearance.contentSize.width - _hpbar.contentSize.width) * .5, _appearance.contentSize.height / 2 + 22);
}

@end
