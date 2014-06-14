//
//  SDPlantAttack.m
//  TribeHunter
//
//  Created by Student on 4/13/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"
#import "Effects.h"

@implementation SDPlantAttack

- (id)init {
    if (self = [super init]) {
        self.name = @"Plant Attack";
        self.type = kSkillTypeMelee;
        self.effects = @[[SEPhysicalDamage class]];
        self.isAOE = NO;
        self.animID = @"branch";
        self.coolDown = 3.;
        self.weaponSpeed = 4.;
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
    
    NSMutableArray* targets = [NSMutableArray array];
    
    for (THGameObject* gameObject in targetObjects) {
        if (gameObject.y == y
            && gameObject.x - x < 200.) {
            [targets addObject:gameObject];
        }
    }
    
    return targets;
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    if (time < 1.0) {
        return @[];
    }
    
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
