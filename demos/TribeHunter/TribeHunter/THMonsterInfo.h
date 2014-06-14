//
//  THMonsterInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THAttributes.h"
#import "THMonsterType.h"

/** 怪物 */
@interface THMonsterInfo : NSObject <NSCoding>

/** 名称 */
@property NSString* name;

/** 属性 */
@property THAttributes* attributes;

/** 所有技能 */
@property NSArray* skills;

/** 怪物的类型 */
@property THMonsterType type;

@end
