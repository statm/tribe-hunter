//
//  THPlayerProfile.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THAttributes.h"

/** 玩家数据 */
@interface THPlayerProfile : NSObject <NSCoding>

/** 创建新的玩家数据 */
+ (THPlayerProfile*)createDefaultPlayerProfile;


/** 名字 */
@property NSString* name;

/** 等级 */
@property int level;

/** 金钱 */
@property int money;

/** 属性 */
@property (copy) THAttributes* attributes;

/** 已完成地图 */
@property NSMutableArray* completedMissions;

/** 已学习技能 */
@property NSMutableArray* learnedSkills;

/** 技能栏摆放 */
@property NSMutableArray* slotSetting;

@end
