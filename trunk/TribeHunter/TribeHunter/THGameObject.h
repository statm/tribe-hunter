//
//  THGameObject.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "THAttributes.h"

/** 攻击方向 */
typedef NS_ENUM(NSUInteger, THGameObjectType) {
    
    /** 玩家 */
    kGameObjectTypeHero = 1 << 0,
    
    /** 怪物 */
    kGameObjectTypeMonster = 1 << 1,
    
    /** 武器 */
    kGameObjectTypeWeapon = 1 << 2,
    
    /** 植物 */
    kGameObjectTypePlant = 1 << 3
};


@interface THGameObject : NSObject {
    THGameObjectType _type;
    CCSprite* _appearance;
    float _x;
    int _y;
    BOOL _needToRemove;
    THAttributes* _baseAttributes;
    THAttributes* _currentAttributes;
    float _timer;
}

@property THGameObjectType type;
@property CCSprite* appearance;
@property float x;
@property int y;
@property BOOL needToRemove;
@property (copy) THAttributes* baseAttributes;
@property (copy) THAttributes* currentAttributes;

- (void)update:(double)delta;

- (void)showDamage:(float)damage;

- (void)showEffectName: (NSString *)effectName;

@end
