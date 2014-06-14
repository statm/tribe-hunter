//
//  CoolDown.m
//  SimpleCD
//
//  Created by Yue Cai on 2/12/14.
//  Copyright (c) 2014 Yue Cai. All rights reserved.
//

#import "CoolDown.h"

@implementation CoolDown

@synthesize timer = _timer;
@synthesize button = _button;
@synthesize body = _body;
@synthesize coolDownLength = _coolDownLength;
@synthesize startTime = _startTime;
@synthesize endTime = _endTime;
@synthesize ready = _ready;

- (id) initWithFile:(NSString *)image grey:(NSString *) grey_scale{
    
    _button = [CCMenuItemImage itemFromNormalImage:image selectedImage:image];
    
    _timer = [CCProgressTimer progressWithSprite:[CCSprite spriteWithFile:grey_scale]];
    _timer.type = kCCProgressTimerTypeBar;
    _timer.midpoint = ccp(1, 0);
    _timer.barChangeRate = ccp(1, 0);
    _timer.percentage = 0.0;
    
    _body = [CCSprite node];
    //[_button setPosition:CGPointMake(200, 200)];
    //[_timer setPosition:CGPointMake(200, 200)];
    [_body addChild:_button];
    [_body addChild:_timer z:1];

    _ready = YES;
    return self;
}

- (void) update:(ccTime)delta{
    NSLog(@"every update start time is %f", CACurrentMediaTime());
    NSLog(@"every update start time the percentage is %f", _timer.percentage);
    double elapsed = CACurrentMediaTime() - _startTime;
    if(CACurrentMediaTime() < _endTime){
        _timer.percentage = (1 - elapsed/_coolDownLength)*100.0;
        _ready = NO;
    }
    else{
        _ready = YES;
        return;
    }
        
}
- (void) startCD: (double)length{
    _startTime = CACurrentMediaTime();//still needs to modify how time is stored
    _coolDownLength = length;
    _endTime = _startTime + _coolDownLength;
    _timer.percentage = 100.0;
    _ready = NO;
    NSLog(@"when started, time is %f", _startTime);
    NSLog(@"the program should end in %f", _endTime);
}
@end
