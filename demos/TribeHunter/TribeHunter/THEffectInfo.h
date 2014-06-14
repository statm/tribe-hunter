//
//  THEffectInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THAttackType.h"

/** 技能效果（抽象类） */
@interface THEffectInfo : NSObject <NSCoding>

/** 效果类型 */
@property THAttackType type;

@end
