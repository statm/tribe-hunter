//
//  THMonsterWaveEvent.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/22.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMonsterWaveEvent.h"
#import "THMonster.h"

@implementation THMonsterWaveEvent {
    THMissionWaveInfo* _waveInfo;
}

+ (THMonsterWaveEvent*)eventWithWaveInfo:(THMissionWaveInfo*)waveInfo {
    return [[self alloc] initWithWaveInfo:waveInfo];
}

- (id)initWithWaveInfo:(THMissionWaveInfo*)waveInfo {
    if (self = [super initWithEventTime:waveInfo.waveTime]) {
        _waveInfo = waveInfo;
    }
    return self;
}

- (void)executeEvent:(THGame*)game {
    if (!_waveInfo) {
        return;
    }
    
    for (THMonsterSpawnInfo* spawn in _waveInfo.spawn) {
        int monsterCount = spawn.minCount + (arc4random() % (spawn.maxCount - spawn.minCount + 1));
        for (int i = 0; i < monsterCount; i++) {
            THMonster* monster = [THMonster monsterWithInfo:spawn.monster];
            [game addGameObject:monster];
        }
    }
}

@end
