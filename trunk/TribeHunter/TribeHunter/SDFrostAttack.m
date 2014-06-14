//
//  SDFrostAttack.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"

@implementation SDFrostAttack

- (id)init {
    if (self = [super init]) {
        self.name = @"Frost Attack";
        self.type = kSkillTypeRanged;
        self.effects = @[[SESlowDown class], [SEPhysicalDamage class]];
        self.isAOE = YES;
        self.coolDown = 2.;
        self.weaponSpeed = 4.;
        self.animID = @"frost";
        self.iconID = @"frost.jpg";
        self.maxTime = 4.;
    }
    return self;
}


- (THGameObject*)findDirectTargetWithTargets:(NSArray*)targetObjects
                                         atX:(float)x
                                         atY:(int)y
                                   direction:(THWeaponDirection)direction {
    THGameObject* target;
    
    for (THGameObject* gameObject in targetObjects) {
        if (INRANGE(gameObject.x, x - 50., x + 50.)
            && (gameObject.y == y || gameObject.type == kGameObjectTypeHero)) {  
            
            if (!target
                || (ABS(gameObject.x - x) < ABS(target.x - x))) {
                target = gameObject;
            }
            
        }
    }
    
    return target;
}

- (NSArray*)findAffectedTargets:(NSArray*)targetObjects
                            atX:(float)x
                            atY:(int)y
                      direction:(THWeaponDirection)direction {
    NSMutableArray* targets = [NSMutableArray array];
    
    float px = x;
    float py = R2P(y);
    
    for (THGameObject* gameObject in targetObjects) {
        float tx = gameObject.x;
        float ty = R2P(gameObject.y);
        
        float dx = tx - px;
        float dy = ty - py;
        if (sqrtf(dx * dx + dy * dy) < 60.) {
            [targets addObject:gameObject];
        }
    }
    
    return targets;
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
    
    if ([self findDirectTargetWithTargets:targetObjects
                                      atX:x
                                      atY:y
                                direction:direction] == nil) {
        return @[];
    }
    
    return [self findAffectedTargets:targetObjects
                                 atX:x
                                 atY:y
                           direction:direction];
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

@end
