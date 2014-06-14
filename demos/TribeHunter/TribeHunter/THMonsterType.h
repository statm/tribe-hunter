//
//  THMonsterType.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 怪物类型 */
typedef NS_ENUM(NSUInteger, THMonsterType) {
    
    /** 近战 */
    kMonsterTypeMelee,
    
    /** 远程 */
    kMonsterTypeRanged,
    
    /** 未知 */
    kMonsterTypeUnknown
};