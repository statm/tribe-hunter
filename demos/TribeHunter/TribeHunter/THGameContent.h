//
//  THGameContent.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THMissionInfo.h"
#import "THSkillInfo.h"

/** 完整的静态游戏数据 */
@interface THGameContent : NSObject <NSCoding>

@property NSArray *missions;
@property NSArray *skills;

@end
