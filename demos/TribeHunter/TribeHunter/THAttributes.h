//
//  THAttributes.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 玩家和怪物通用的属性组 */
@interface THAttributes : NSObject <NSCoding>

/** 创建新的玩家属性 */
+ (THAttributes*)createDefaultPlayerAttributes;


/** 生命值 */
@property int HP;

/** 攻击力 */
@property int attackPower;

/** 暴击率 */
@property float criticalRate;

/** 躲闪率 */
@property float dodgeRate;

/** 各种抗性 */
@property NSMutableDictionary* resistance;

@end
