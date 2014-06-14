//
//  THSkillInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THSkillInfo.h"
#import "THGameObject.h"
#import "THMonster.h"
#import "THHero.h"

@implementation THSkillInfo

- (NSString*)description {
    return [NSString stringWithFormat:@"<THSkillInfo: name=%@, type=%d, desc=%@, levelReq=%d, cost=%d, parent=%@, effects=%@, fxID=%@, iconId=%@>",
            _name,
            _type,
            _desc,
            _levelRequired,
            _cost,
            _parentSkills,
            _effects,
            _fxID,
            _iconID];
}

- (BOOL)shouldMoveWeaponWithTargets:(NSArray*)targetObjects
                                atX:(float)x
                                atY:(int)y
                          direction:(THWeaponDirection)direction {
    return YES;
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction {
    return @[];
}

/* override me */
- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    return @[];
}

- (void)attackTarget:(THGameObject*)target
               owner:(THGameObject*)owner {
    for (Class effectClass in _effects) {
        THEffectInfo* effect = [[effectClass alloc] init];
        effect.owner = owner;
        
        if ([target isMemberOfClass:[THMonster class]]) {
            THMonster* monster = (THMonster*)target;
            [monster.info addEffect:effect];
        } else {
            THHero* hero = (THHero*)target;
            [effect apply:hero];
        }
    }
}

- (void)attackTargets:(NSArray*)targets
                owner:(THGameObject*)owner {
    for (THGameObject* target in targets) {
        [self attackTarget:target owner:owner];
    }
}

@end
