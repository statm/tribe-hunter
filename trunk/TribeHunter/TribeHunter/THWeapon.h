//
//  THWeapon.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"
#import "THSkillInfo.h"
#import "THWeaponDirection.h"

@interface THWeapon : THGameObject

- (id)initWithSkill:(THSkillInfo*)skill
                  x:(float)x
                  y:(int)y
              owner:(THGameObject*)owner
          direction:(THWeaponDirection)direction
        targetTypes:(int)targetTypeMask;

@end
