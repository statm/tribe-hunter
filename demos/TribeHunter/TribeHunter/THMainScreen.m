//
//  THMainScreen.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMainScreen.h"
#import "THCore.h"

@implementation THMainScreen

+ (THMainScreen*)mainScreen {
    return [[self alloc] init];
}

- (id)init {
    if (self = [super init]) {
        _popUpLayer = [[CCLayer alloc] init];
        
        // TEST ONLY
        CCLayerColor* background = [CCLayerColor layerWithColor:ccc4(150, 150, 150, 255)];
        [self addChild:background];
        
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        CCLabelTTF* label = [CCLabelTTF labelWithString:@"Main Screen" fontName:@"Chalkduster" fontSize:35];
        label.position = CGPointMake(winSize.width / 2, 200);
        [self addChild:label];
        
        CCLabelTTF* label2 = [CCLabelTTF labelWithString:@"Touch to continue" fontName:@"Chalkduster" fontSize:15];
        label2.position = CGPointMake(winSize.width / 2, 160);
        [self addChild:label2];
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
    THLog(@"%@", @"Main screen touched");
    // TEST ONLY
    [[THCore sharedCore] enterGameWithMissionID:0];
    return YES;
}

@end