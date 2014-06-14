//
//  THMissionWaveInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THMonsterInfo.h"

// -----------------------------------------------------------------------
#pragma mark - THMonsterSpawnInfo
// -----------------------------------------------------------------------
/** 同一波怪物中，某一类怪物的描述 */
@interface THMonsterSpawnInfo : NSObject <NSCoding>

/** 怪物 */
@property THMonsterInfo* monster;

/** 最小数量 */
@property int minCount;

/** 最大数量 */
@property int maxCount;

@end


// -----------------------------------------------------------------------
#pragma mark - THMissionWaveInfo
// -----------------------------------------------------------------------
/** 一波怪物的描述 */
@interface THMissionWaveInfo : NSObject <NSCoding>

/** 刷新间隔时间 */
@property int waveTime;

/** 各类怪物的数量，参见 THMonsterSpawnInfo 类 */
@property NSArray* spawn;

@end
