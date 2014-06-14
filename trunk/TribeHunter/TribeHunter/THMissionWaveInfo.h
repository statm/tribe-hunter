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
@interface THMonsterSpawnInfo : NSObject

/** 怪物类 */
@property Class monsterClass;

/** 最小数量 */
@property int minCount;

/** 最大数量 */
@property int maxCount;

/** 区域 */
@property int region;

@end


// -----------------------------------------------------------------------
#pragma mark - THMissionWaveInfo
// -----------------------------------------------------------------------
/** 一波怪物的描述 */
@interface THMissionWaveInfo : NSObject <NSCopying>

/** 刷新间隔时间 */
@property float waveTime;

/** 各类怪物的数量，参见 THMonsterSpawnInfo 类 */
@property NSArray* spawn;

@end
