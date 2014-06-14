//
//  SDArrowAttack.m
//  TribeHunter
//
//  Created by statm on 2014/3/6.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"

@implementation SDArrowAttack

- (id)init {
    if (self = [super init]) {
        self.name = @"Arrow Attack";
        self.type = kSkillTypeRanged;
        self.effects = @[[SEPhysicalDamage class]];
        self.animID = @"arrow";
        self.isAOE = NO;
        self.coolDown = .4;
        self.weaponSpeed = 4.;
        self.iconID = @"normal_arrow.png";
        self.maxTime = 4.;
    }
    return self;
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    
    THGameObject* target;
    
    float range1;
    if (direction == kWeaponDirectionLeft) {
        range1 = x - 30.;
    } else if (direction == kWeaponDirectionRight) {
        range1 = x + 30.;
    }
    
    for (THGameObject* gameObject in targetObjects) {
        if (INRANGE(gameObject.x, x, range1)
            && (gameObject.y == y || gameObject.type == kGameObjectTypeHero)) {
            
            if (!target
                || (ABS(gameObject.x - x) < ABS(target.x - x))) {
                target = gameObject;
            }
            
        }
    }
    
    if (target) {
        return @[target];
    }
    
    return @[];
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
