//
//  THWeapon.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THWeapon.h"
#import "THAnimation.h"
#import "THCore.h"
#import "THParticle.h"
#import "Macros.h"

@implementation THWeapon {
    THSkillInfo* _skill;
    THWeaponDirection _direction;
    int _targetTypeMask;
    float _time;
    THGameObject* _owner;
    THParticle* _particle;
}

- (id)initWithSkill:(THSkillInfo*)skill
                  x:(float)x
                  y:(int)y
              owner:(THGameObject*)owner
          direction:(THWeaponDirection)direction
        targetTypes:(int)targetTypeMask {
    if (self = [super init]) {
        _type = kGameObjectTypeWeapon;
        
        
        if (skill.animID) {
            THAnimation* anim = [[[THCore sharedCore] assetMgr] createAnimation:skill.animID];
            [anim playAnim:@"normal"];
            _appearance = anim.sprite;
            
            if (direction == kWeaponDirectionLeft) {
                _appearance.flipX = YES;
            }
        }
        
        
        self.x = x;
        self.y = y;
        
        _skill = skill;
        _owner = owner;
        _direction = direction;
        _targetTypeMask = targetTypeMask;
        
        _time = 0.;
        
        if (skill.fxID) {
            _particle = [[THParticle alloc]init];
            [_particle load:skill.fxID];
            _particle.particle.position = CGPointMake(_x, R2P(_y));
            [[[[[THCore sharedCore] game] gameScreen] gameScene] addChild:_particle.particle];
        }
    }
    return self;
}

- (void)update:(double)delta {
    [super update:delta];
    _time += delta;
    
    NSArray* targetObjects = [[[THCore sharedCore] game] filterGameObjectsWithTypes:_targetTypeMask];
    
    if ([_skill shouldMoveWeaponWithTargets:targetObjects
                                        atX:_x
                                        atY:_y
                                  direction:_direction]) {
        if (_direction == kWeaponDirectionLeft) {
            self.x -= _skill.weaponSpeed;
        } else if (_direction == kWeaponDirectionRight) {
            self.x += _skill.weaponSpeed;
        }
    }
    
    BOOL attackFinished = NO;
    NSArray* targets = [_skill findTargets:targetObjects
                                       atX:_x
                                       atY:_y
                                    atTime:_time
                                 direction:_direction];
    
    if ([targets count] > 0) {
        [_skill attackTargets:targets owner:_owner];
        attackFinished = YES;
    }

    _needToRemove = OUT(_x, _y) || attackFinished || _time > _skill.maxTime;
    
    if (!_needToRemove) {
        _particle.particle.position = CGPointMake(_x, R2P(_y));
    } else if (_particle.particle) {
        [_particle.particle.parent removeChild:_particle.particle];
    }
}


@end
