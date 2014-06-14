//
//  THSkillInfo.h
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Effects.h"
#import "THWeaponDirection.h"
#import "THGameObject.h"
#import "Macros.h"

// -----------------------------------------------------------------------
#pragma mark - THEffectType
// -----------------------------------------------------------------------

/** 技能类型 */
typedef NS_ENUM(NSUInteger, THSkillType) {
    
    /** 近战 */
    kSkillTypeMelee,
    
    /** 远程 */
    kSkillTypeRanged,
    
    /** 其他 */
    kSkillTypeOther
};


// -----------------------------------------------------------------------
#pragma mark - THSkillInfo
// -----------------------------------------------------------------------

/** 技能 */
@interface THSkillInfo : NSObject

/** 名称 */
@property NSString* name;

/** 描述 */
@property NSString* desc;

/** 类型 */
@property THSkillType type;

/** 需要等级 */
@property int levelRequired;

/** 学习花费 */
@property int cost;

/** 父技能（必须先修） */
@property NSArray* parentSkills;

/** 技能效果 */
@property NSArray* effects;

/** 动画ID */
@property NSString* animID;

/** 图标ID */
@property NSString* iconID;

/** 特效ID */
@property NSString* fxID;

/** 冷却时间 */
@property float coolDown;

/** 是否需要移动到施放行 */
@property BOOL isAOE;

/** 武器飞行速度 */
@property float weaponSpeed;

/** 最长存留时间 */
@property float maxTime;

- (BOOL)shouldMoveWeaponWithTargets:(NSArray*)targetObjects
                                atX:(float)x
                                atY:(int)y
                          direction:(THWeaponDirection)direction;

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
              direction:(THWeaponDirection)direction;

- (NSArray*)findTargets:(NSArray*)targetObjects
                    atX:(float)x
                    atY:(int)y
                 atTime:(float)time
              direction:(THWeaponDirection)direction;

- (void)attackTarget:(THGameObject*)target
               owner:(THGameObject*)owner;

- (void)attackTargets:(NSArray*)targets
                owner:(THGameObject*)owner;

@end
