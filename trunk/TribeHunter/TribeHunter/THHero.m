//
//  THHero.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THHero.h"
#import "THAnimation.h"
#import "THCore.h"
#import "Macros.h"
#import "Skills.h"
#import "THWeapon.h"

@implementation THHero {
    int _targetY;
    THSkillInfo* _autoSkill;
    float _autoCD;
    THAnimation* _animation;
}

- (id)init {
    if (self = [super init]) {
        _type = kGameObjectTypeHero;
        
        _x = 133;
        _targetY = _y = 3;
        
        // temp attributes
        _baseAttributes = [[THAttributes alloc] init];
        _baseAttributes.HP = 500;
        _baseAttributes.attackPower = 60;
        
        _currentAttributes = [[THAttributes alloc] init];
        _currentAttributes.HP = 500;
        _currentAttributes.attackPower = 60;
        // ===
        
        _autoSkill = [[SDArrowAttack alloc] init];
        _autoCD = 0.;
        
        [[[THCore sharedCore] assetMgr] loadAnimationAsset:@"hero"];
        _animation = [[[THCore sharedCore] assetMgr] createAnimation:@"hero"];
        
        _animation.sprite.position = CGPointMake(_x - 50, R2P(_y));
        [_animation playAnim:@"walk"];
        _appearance = _animation.sprite;
    }
    return self;
}

- (int)y {
    return P2R(_appearance.position.y);
}

- (void)setY:(int)y {
    _targetY = y;
}

- (void)update:(double)delta {
    [super update:delta];
    // 调整位置
    if (ABS(_appearance.position.y - R2P(_targetY)) > 1) {
        _appearance.position = CGPointMake(_x - 50, _appearance.position.y + (R2P(_targetY) - _appearance.position.y) * .15);
    }
    
//    THLog(@"y_pixel=%f, y=%d", _appearance.position.y, self.y);
    
    // 自动射击
    _autoCD -= delta;
    if (_autoCD < 0.) {
        _autoCD = _autoSkill.coolDown;
        
        THWeapon* weapon = [[THWeapon alloc] initWithSkill:_autoSkill
                                                         x:self.x - 30
                                                         y:self.y
                                                     owner:self
                                                 direction:kWeaponDirectionRight
                                               targetTypes:kGameObjectTypeMonster];
        
        [[[THCore sharedCore] game] addGameObject:weapon];
        [_animation playOnce:@"attack"];
    }
}

@end
