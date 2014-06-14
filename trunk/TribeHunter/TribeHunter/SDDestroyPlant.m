//
//  SDDestroyPlant.m
//  TribeHunter
//
//  Created by Student on 4/20/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"
#import "THPlant.h"

@implementation SDDestroyPlant

- (id)init {
    if (self = [super init]) {
        self.name = @"Destroy Plant";
        self.type = kSkillTypeMelee;
        self.effects = @[[SEDestroyPlant class]];
        self.isAOE = NO;
        self.animID = @"hellfire";
        self.coolDown = 15.;
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

- (NSArray*)findTargets:(NSArray *)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    
    THGameObject* target;
    
    for (THGameObject* gameObject in targetObjects) {
        if ([gameObject isMemberOfClass:[THPlant class]]) {
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
    if (time < 2.5) {
        return @[];
    }
    
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
