//
//  SDBossSummon.m
//  TribeHunter
//
//  Created by Student on 4/20/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Skills.h"
#import "THCore.h"
#import "THGame.h"
#import "Monsters.h"

@implementation SDBossSummon

- (id)init {
    if (self = [super init]) {
        self.name = @"Boss Summon";
        self.type = kSkillTypeMelee;
        self.effects = @[];
        self.isAOE = NO;
        self.coolDown = 13.;
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
    
    THMonsterInfo* monsterInfo = [[MDHelmetMonster alloc] init];
    THMonster* monster = [THMonster monsterWithInfo:monsterInfo region:y];
    monsterInfo.monster = monster;
    monster.x = x - 50;
    [game addGameObject:monster];
    [game addMonsterCount];
    
    if (y < 5) {
        monsterInfo = [[MDFireMonster alloc] init];
        monsterInfo.skills = @[];
        monster = [THMonster monsterWithInfo:monsterInfo region:y];
        monsterInfo.monster = monster;
        monster.x = x;
        monster.y = y + 1;
        [game addGameObject:monster];
        [game addMonsterCount];
    }
    
    if (y > 0) {
        monsterInfo = [[MDFireMonster alloc] init];
        monsterInfo.skills = @[];
        monster = [THMonster monsterWithInfo:monsterInfo region:y];
        monsterInfo.monster = monster;
        monster.x = x;
        monster.y = y - 1;
        [game addGameObject:monster];
        [game addMonsterCount];
    }
    
    return @[game];
}

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction {
    return [self findTargets:targetObjects atX:x atY:y direction:direction];
}

- (void)attackTarget:(THGameObject*)target
               owner:(THGameObject*)owner {
}

- (void)attackTargets:(NSArray*)targets
                owner:(THGameObject*)owner {
}

@end
