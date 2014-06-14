//
//  THGameUI.h
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THSkillCDInfo.h"

@interface THGameUI : UIView

- (void)updateWithCurrentHP:(int)currentHP
                    totalHP:(int)totalHP
                   coolDown:(NSArray*)coolDownTable;

- (void) setSkills:(NSArray *)skills;

- (void) setSelectedSkill:(THSkillInfo *)skill;
@end
