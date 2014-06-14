//
//  THSkillCDInfo.h
//  TribeHunter
//
//  Created by Yue Cai on 3/22/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THSkillInfo.h"

@interface THSkillCDInfo : NSObject

@property NSArray *skills;
@property NSMutableArray *remainCDTime;

- (id) initWithSkills:(NSArray*)skills;

- (void) update: (float) delta ;

- (THSkillInfo*) getFirstReadySkill;

- (NSArray*) getCDRate;

- (void) startCDSkill:(THSkillInfo*)skill;

- (BOOL) isSkillReady:(THSkillInfo*)skill;

@end
