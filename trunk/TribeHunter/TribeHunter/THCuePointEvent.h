//
//  THCuePointEvent.h
//  TribeHunter
//
//  Created by Student on 4/19/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THGameEvent.h"
#import "THCuePointInfo.h"

@interface THCuePointEvent : THGameEvent

+ (THCuePointEvent*)eventWithInfo:(THCuePointInfo*)info;
@end
