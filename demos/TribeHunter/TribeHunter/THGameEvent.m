//
//  THGameEvent.m
//  TribeHunter
//
//  Created by Yue Cai on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameEvent.h"

@implementation THGameEvent

- (id)initWithEventTime:(double)eventTime {
    if(self = [super init]) {
        _eventTime = eventTime;
    }
    return self;
}

/* override me */
- (void)executeEvent:(THGame*)game {
    
}

@end
