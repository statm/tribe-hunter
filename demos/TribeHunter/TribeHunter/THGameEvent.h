//
//  THGameEvent.h
//  TribeHunter
//
//  Created by Yue Cai on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THGame.h"

/** 游戏事件 */
@interface THGameEvent : NSObject {
    double _eventTime;
}

@property double eventTime;

- (id)initWithEventTime:(double)eventTime;

/** 执行事件，具体动作由子类覆盖 */
- (void)executeEvent:(THGame*)game;

@end
