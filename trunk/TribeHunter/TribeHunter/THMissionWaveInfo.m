//
//  THMissionWaveInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMissionWaveInfo.h"

// -----------------------------------------------------------------------
#pragma mark - THMonsterSpawnInfo
// -----------------------------------------------------------------------
@implementation THMonsterSpawnInfo

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMonsterSpawnInfo: monster=%@, min=%d, max=%d>",
            _monsterClass,
            _minCount,
            _maxCount];
}

@end


// -----------------------------------------------------------------------
#pragma mark - THMissionWaveInfo
// -----------------------------------------------------------------------
@implementation THMissionWaveInfo

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMissionWaveInfo: waveTime=%f, spawn=%@>",
            _waveTime,
            _spawn];
}

- (id)copyWithZone:(NSZone *)zone {
    THMissionWaveInfo* newWaveInfo = [[THMissionWaveInfo alloc] init];
    
    newWaveInfo.waveTime = self.waveTime;
    newWaveInfo.spawn = [self.spawn copy];
    
    return newWaveInfo;
}

@end
