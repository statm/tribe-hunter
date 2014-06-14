//
//  THSkillInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 技能 */
@interface THSkillInfo : NSObject <NSCoding>

/** 名称 */
@property NSString* name;

/** 描述 */
@property NSString* desc;

/** 需要等级 */
@property int levelRequired;

/** 学习花费 */
@property int cost;

/** 父技能（必须先修） */
@property NSArray* parentSkills;

/** 技能效果 */
@property NSArray* effects;

@end
