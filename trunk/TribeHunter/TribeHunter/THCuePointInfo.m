//
//  THCuePointInfo.m
//  TribeHunter
//
//  Created by Student on 4/19/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THCuePointInfo.h"

@implementation THCuePointInfo

- (id)copyWithZone:(NSZone *)zone {
    THCuePointInfo* newCuePointInfo = [[THCuePointInfo alloc] init];
    
    newCuePointInfo.eventTime = self.eventTime;
    newCuePointInfo.cueName = self.cueName;
    newCuePointInfo.skills = self.skills.copy;
    
    return newCuePointInfo;
}

@end
