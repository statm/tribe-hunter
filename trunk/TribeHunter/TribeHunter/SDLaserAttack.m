//
//  SDLaserAttack.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"

@implementation SDLaserAttack

- (id)init {
    if (self = [super init]) {
        self.name = @"Laser Attack";
        self.type = kSkillTypeRanged;
        self.effects = @[[SELaser class]];
        self.animID = @"arrow";
        self.isAOE = NO;
        self.coolDown = 3.;
        self.weaponSpeed = 12.;
        self.fxID = @"t11";
        self.iconID = @"laser.png";
        self.maxTime = 4.;
    }
    return self;
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    
    if (x < 450) {
        return @[];
    }
    
    NSMutableArray* targets = [NSMutableArray array];
    
    for (THGameObject* gameObject in targetObjects) {
        if ((gameObject.y == y || gameObject.type == kGameObjectTypeHero)) {
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
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
