//
//  SDHellFireAttack.m
//  TribeHunter
//
//  Created by Student on 4/20/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"

@implementation SDHellFireAttack

- (id)init {
    if (self = [super init]) {
        self.name = @"Hell Fire Attack";
        self.type = kSkillTypeMelee;
        self.effects = @[[SEPhysicalDamage class]];
        self.isAOE = NO;
        self.animID = @"hellfire";
        self.coolDown = 6.;
        self.maxTime = 2.8;
    }
    return self;
}

- (BOOL)shouldMoveWeaponWithTargets:(NSArray*)targetObjects
                                atX:(float)x
                                atY:(int)y
                          direction:(THWeaponDirection)direction {
    return NO;
}

- (NSArray*)findTargets:(NSArray *)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    
    THGameObject* target;
    
    for (THGameObject* gameObject in targetObjects) {
        if (gameObject.y == y) {
            target = gameObject;
            break;
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
    if (time < 2.2) {
        return @[];
    }
    
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
