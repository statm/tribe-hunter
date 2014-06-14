//
//  THGameScreen.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameScreen.h"
#import "THCore.h"
#import "THAnimation.h"

@implementation THGameScreen

+ (THGameScreen*)gameScreen {
    return [[self alloc] init];
}

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)onEnter {
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
    [super onEnter];
}

- (void)onExit {
    [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:self];
    [super onExit];
}

- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    THLog(@"%@", @"Game screen touched");
    [[THCore sharedCore] returnToMainScreen];
    return YES;
}

@end
