//
//  THCuePointEvent.m
//  TribeHunter
//
//  Created by Student on 4/19/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THCuePointEvent.h"
#import "THGameScreen.h"

@implementation THCuePointEvent {
    NSString* _cueName;
    NSArray* _skills;
}

+ (THCuePointEvent*)eventWithInfo:(THCuePointInfo*)info{
    return [[self alloc] initWithCuePointInfo:info];
    
}
- (id) initWithCuePointInfo: (THCuePointInfo*)info{
    if (self = [super initWithEventTime:info.eventTime]) {
        _cueName = info.cueName;
        _skills = info.skills;
    }
    return self;
}

- (void)executeEvent:(THGame*)game {
    [game cue];
    [game.gameScreen showCuePointPanel:_cueName];
    [game setSkills:_skills];
}
@end
