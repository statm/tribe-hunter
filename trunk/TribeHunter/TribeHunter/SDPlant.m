//
//  SDPlant.m
//  TribeHunter
//
//  Created by Student on 4/13/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"
#import "THCore.h"
#import "THGame.h"
#import "THPlant.h"

@implementation SDPlant

- (id)init {
    if (self = [super init]) {
        self.name = @"Plant";
        self.type = kSkillTypeOther;
        self.effects = @[];
        self.isAOE = YES;
        self.coolDown = 1.;
        self.weaponSpeed = 4.;
        self.iconID = @"plant_icon.png";
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
    
    THGame* game = [[THCore sharedCore] game];
    THPlant* plant = [[THPlant alloc] initWithX:x y:y];
    [game addGameObject:plant];
    
    return @[game];
}

- (void)attackTarget:(THGameObject*)target
               owner:(THGameObject*)owner {
}

- (void)attackTargets:(NSArray*)targets
                owner:(THGameObject*)owner {
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end