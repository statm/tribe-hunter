//
//  SDMeleeAttack.m
//  TribeHunter
//
//  Created by Student on 4/14/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"

@implementation SDMeleeAttack


- (id)init {
    if (self = [super init]) {
        self.name = @"Melee Attack";
        self.type = kSkillTypeMelee;
        self.effects = @[[SEPhysicalDamage class]];
        self.coolDown = 1.2;
        self.maxTime = 4.;
    }
    return self;
}

- (BOOL)shouldMoveWeaponWithTargets:(NSArray*)targetObjects
                                atX:(float)x
                                atY:(int)y
                          direction:(THWeaponDirection)direction {
    return NO;
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    
    THGameObject* target;
    
    float range1;
    if (direction == kWeaponDirectionLeft) {
        range1 = x - 40.;
    } else if (direction == kWeaponDirectionRight) {
        range1 = x + 40.;
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
