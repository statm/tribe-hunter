//
//  THAttackType.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 攻击类型 */
typedef NS_ENUM(NSUInteger, THAttackType) {
    
    /** 物理 */
    kAttackTypePhysical,
    
    /** 冰系 */
    kAttackTypeIce,
    
    /** 毒系 */
    kAttackTypePoison,
    
    /** 自然系 */
    kAttackTypeNature,
    
    /** 激光 */
    kAttackTypeLaser,
    
    /** 未知 */
    kAttackTypeUnknown
};