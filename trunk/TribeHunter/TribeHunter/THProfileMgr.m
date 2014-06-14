//
//  THProfileMgr.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THProfileMgr.h"
#import "CCFileUtils.h"
#import "THMissionWaveInfo.h"
#import "THCuePointInfo.h"

@implementation THProfileMgr

- (id)init {
    if (self = [super init]) {
        THLog(@"%@", @" ProfileMgr init");
        
        [self loadGameContent];
        THLog(@"%@", @"  Game content loaded");
        
        [self loadPlayerProfile];
        THLog(@"%@", @"  Player profile loaded");
    }
    return self;
}


- (void)loadGameContent {
    _gameContent = [[THGameContent alloc] init];
}


- (void)loadPlayerProfile {
    NSData* data = [[NSUserDefaults standardUserDefaults] objectForKey:@"playerProfile"];
    if (data) {
        _playerProfile = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    } else {
        THLog(@"%@", @"  Player profile not found, creating a new one");
        _playerProfile = [THPlayerProfile createDefaultPlayerProfile];
        [self savePlayerProfile];
    }
}


- (void)savePlayerProfile {
    [[NSUserDefaults standardUserDefaults]
     setObject:[NSKeyedArchiver archivedDataWithRootObject:_playerProfile]
        forKey:@"playerProfile"];
}


- (void)updatePlayerProfile :(THGameData *)gameData {
    _playerProfile.money = gameData.money;
    _playerProfile.attributes = gameData.attributes;
    _playerProfile.slotSetting = gameData.slotSetting;
    
    [self savePlayerProfile];
}


- (THGameData*)generateGameDataWithMissionID:(int)missionID {
    THGameData *gameData = [[THGameData alloc] init];
    
    gameData.money = _playerProfile.money;
    gameData.slotSetting = _playerProfile.slotSetting;
    gameData.attributes = _playerProfile.attributes;
    
    THMissionInfo* newMission = [[THMissionInfo alloc] init];
    NSMutableArray* newWaves = [[NSMutableArray alloc] init];
    NSMutableArray* newCuePointWaves = [[NSMutableArray alloc] init];
    
    float deltaTime = 0.0f;
    float missionLength = 0.0f;
    for (int i = missionID ; i < _gameContent.missions.count; i++) {
        THMissionInfo* mission = _gameContent.missions[i];
        missionLength = 0.0f;
        
        for (THMissionWaveInfo* wave in mission.waves) {
            THMissionWaveInfo* newWave = [wave copy];
            missionLength = newWave.waveTime;
            newWave.waveTime += deltaTime;
            [newWaves addObject:newWave];
        }
        for (THCuePointInfo* pointInfo in mission.cuePointWaves) {
            THCuePointInfo* newCuePointWave = [pointInfo copy];
            newCuePointWave.eventTime += deltaTime;
            THLog(@"cue point time is %f", newCuePointWave.eventTime);
            [newCuePointWaves addObject:newCuePointWave];
            
        }
        
        deltaTime += missionLength + 6.0f;
    }
    
    newMission.waves = newWaves;
    newMission.cuePointWaves = newCuePointWaves;
    
    gameData.mission = newMission;
 
    return gameData;
}

@end