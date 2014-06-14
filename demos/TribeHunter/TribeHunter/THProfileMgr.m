//
//  THProfileMgr.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THProfileMgr.h"
#import "CCFileUtils.h"

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
    NSString* gameContentPath = [[CCFileUtils sharedFileUtils] fullPathForFilename:@"gameContent.plist"];
    _gameContent = [NSKeyedUnarchiver unarchiveObjectWithFile:gameContentPath];
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
    gameData.mission = _gameContent.missions[missionID];
 
    return gameData;
}

@end