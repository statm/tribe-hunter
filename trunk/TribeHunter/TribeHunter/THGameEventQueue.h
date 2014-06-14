//
//  THGameEventQueue.h
//  TribeHunter
//
//  Created by Yue Cai on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "THGameEvent.h"
#import "Macros.h"

/** 游戏事件队列，用于存放和取得所有游戏事件 */
@interface THGameEventQueue : NSObject

/** 构造一个空队列 */
+ (THGameEventQueue*)queue;

/** 添加游戏事件*/
- (void)addGameEvent:(THGameEvent*)gameEvent;

/** 获取当前时间应该执行的事件 */
- (NSMutableArray*)searchGameEvent:(double)gameClock;

@end
