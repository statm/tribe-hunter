//
//  THCooldownButton.h
//  TribeHunter
//
//  Created by Student on 3/8/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THSkillCDInfo.h"

@interface THCooldownButton : UIView

@property UIButton *button;
@property THSkillInfo *skill;

- (id)initWithImage:(NSString *)name location: (CGRect)frame attachedSkill: (THSkillInfo *) skill;
- (void)update:(float)percentage;
- (void)addHighlight;
- (void)removeHighlight;
@end
