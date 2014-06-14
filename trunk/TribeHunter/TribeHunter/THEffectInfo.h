//
//  THEffectInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THGameObject.h"
#import "THMonsterInfo.h"

// -----------------------------------------------------------------------
#pragma mark - THEffectType
// -----------------------------------------------------------------------

/** 效果类型 */
typedef NS_ENUM(NSUInteger, THEffectType) {
    
    /** 物理 */
    kEffectTypePhysical,
    
    /** 冰系 */
    kEffectTypeIce,
    
    /** 毒系 */
    kEffectTypePoison,
    
    /** 自然系 */
    kEffectTypeNature,
    
    /** 激光 */
    kEffectTypeLaser,
    
    /** 未知 */
    kEffectTypeUnknown
};



// -----------------------------------------------------------------------
#pragma mark - THEffectInfo
// -----------------------------------------------------------------------

/** 技能效果（抽象类） */
@interface THEffectInfo : NSObject {
    double _timer;
}

/** 效果类型 */
@property THEffectType type;

@property BOOL finished;

@property THGameObject* owner;

- (void)update:(ccTime)delta;

- (void)apply:(THGameObject*)target;

- (void)remove:(THGameObject*)target;

@end


