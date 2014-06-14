//
//  THGameEventQueue.m
//  TribeHunter
//
//  Created by Yue Cai on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameEventQueue.h"

@implementation THGameEventQueue{
    NSComparator _comparator;
    NSMutableArray* _eventQueue;
}

+ (THGameEventQueue*)queue {
    return [[self alloc] init];
}

- (id)init{
    if(self = [super init]){
        _eventQueue = [NSMutableArray array];
        
        _comparator = ^NSComparisonResult(THGameEvent *event1, THGameEvent *event2) {
            if (event1.eventTime < event2.eventTime) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            else if(event1.eventTime > event2.eventTime){
                return (NSComparisonResult)NSOrderedDescending;
            }
            else {
                return (NSComparisonResult)NSOrderedSame;
            }
        };
    }
    return self;
}


- (void)addGameEvent:(THGameEvent*)event{
    NSUInteger index = [_eventQueue indexOfObject:event
                                    inSortedRange:(NSRange){0, [_eventQueue count]}
                                    options:NSBinarySearchingInsertionIndex
                                    usingComparator:_comparator];
    [_eventQueue insertObject:event atIndex:index];
    THLog(@" GameEvent added, GEQ size=%d", [_eventQueue count]);
}


- (NSMutableArray*)searchGameEvent:(double)gameClock{
    NSMutableArray *result = [NSMutableArray array];
    int pos = 0;
    while ([_eventQueue count] > 0 && pos < [_eventQueue count]) {
        THGameEvent *event = [_eventQueue objectAtIndex:pos];
        if(event.eventTime > gameClock)
            break;
        else{
            [result addObject:event];
            [_eventQueue removeObjectAtIndex:pos];
            THLog(@" %@ popped at %f", event, event.eventTime);
        }
    }
    return result;
}
@end
