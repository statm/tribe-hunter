//
//  THProfileMgr.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import "THPlayerProfile.h"
#import "THGameContent.h"
#import "THGameData.h"

/** 玩家数据/游戏内容管理器 */
@interface THProfileMgr : NSObject

/** 游戏内容 */
@property THGameContent* gameContent;

/** 玩家数据 */
@property THPlayerProfile* playerProfile;


/** 从系统读取游戏内容 */
- (void)loadGameContent;


/** 从系统读取玩家数据 */
- (void)loadPlayerProfile;


/** 将玩家数据保存到系统 */
- (void)savePlayerProfile;


/** 将战斗数据 GameData 更新到玩家数据，战斗结束后调用 */
- (void)updatePlayerProfile :(THGameData *)gameData;


/** 根据关卡 ID 和玩家信息，生成一次性的战斗数据 GameData */
- (THGameData*)generateGameDataWithMissionID:(int) missionID;

@end