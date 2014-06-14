//
//  THGameData.h
//  TribeHunter
//
//  Created by Yue Cai on 2/17/14.
//  Copyright 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THMissionInfo.h"
#import "THAttributes.h"

@interface THGameData : NSObject

/** 当前关卡 */
@property THMissionInfo *mission;

/** 金钱 */
@property int money;

/** 属性 */
@property THAttributes* attributes;

/** 开放技能栏数 */
@property int skillSlotCount;

/** 技能栏摆放 */
@property NSMutableArray* slotSetting;

@end
