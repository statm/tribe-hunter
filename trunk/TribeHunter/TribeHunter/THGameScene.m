//
//  THGameScene.m
//  TribeHunter
//
//  Created by statm on 2014/3/2.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Macros.h"
#import "THGameScene.h"
#import "THHero.h"
#import "THMonsterInfo.h"
#import "THCore.h"
#import "THGame.h"
#import "THSound.h"

#import "SimpleAudioEngine.h"


@implementation THGameScene {
    CCLayerColor* _rowIndicator;
    ccColor3B _indicatorColorNormal;
    ccColor3B _indicatorColorHighlight;
    ccColor4B _backgroundColor;
    CCSprite* _AOEIndicator;
}

- (id)init {
    if (self = [super init]) {
        THLog(@"%@", @" GameScene init");
        
        _backgroundColor = ccc4(50, 50, 50, 255);
        _indicatorColorNormal = ccc3(0, 0, 0);
        _indicatorColorHighlight = ccc3(255, 233, 150);
        
        CCSprite* background = [CCSprite spriteWithFile:@"grassland.png"];
        background.position = ccp(284, 135);
        [self addChild:background];
        
        _AOEIndicator = [CCSprite spriteWithFile:@"AOEIndicator.png"];
        [self addChild:_AOEIndicator];
        _AOEIndicator.opacity = 100;
        _AOEIndicator.visible = NO;
        
        _rowIndicator = [CCLayerColor layerWithColor:_backgroundColor width:568. height:35.];
        _rowIndicator.opacity = 40.;
        [self addChild:_rowIndicator];
        
        [self setRowIndicatorHighlight:NO];
    }
    return self;
}

- (void)onEnter {
    [[[CCDirector sharedDirector] touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
    //[THSound setMusicVol:1.0f];
    [THSound stopMusic];
    [THSound playMusic:@"BGM.mp3" loop:true];
    //[THSound playEffect:@"lose.mp3" loop:YES];
    //[THSound playEffect:@"win.mp3" loop:YES];
    //[THSound playEffect: @"background-music-aac.caf" loop:true];
    [super onEnter];
}

- (void)onExit {
    [[[CCDirector sharedDirector] touchDispatcher] removeDelegate:self];
    [super onExit];
}

- (BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint touchLocation = [touch locationInView:[touch view]];
    float x = min(max(touchLocation.x, 0), 508);
    float y = min(max([touch view].frame.size.height - touchLocation.y, 0), 270);
    CGPoint surfaceLocation = CGPointMake(x, y);
    [[[THCore sharedCore] game] onTouchBegan:surfaceLocation];
    return YES;
}

- (void)ccTouchMoved:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint touchLocation = [touch locationInView:[touch view]];
    float x = min(max(touchLocation.x, 0), 508);
    float y = min(max([touch view].frame.size.height - touchLocation.y, 0), 270);
    CGPoint surfaceLocation = CGPointMake(x, y);
    [[[THCore sharedCore] game] onTouchMoved:surfaceLocation];
}

- (void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint touchLocation = [touch locationInView:[touch view]];
    float x = min(max(touchLocation.x, 0), 508);
    float y = min(max([touch view].frame.size.height - touchLocation.y, 0), 270);
    CGPoint surfaceLocation = CGPointMake(x, y);
    [[[THCore sharedCore] game] onTouchEnded:surfaceLocation];
}

- (void)setRowIndicatorPosition:(int)y {
    _rowIndicator.position = CGPointMake(_rowIndicator.position.x, y * ROW_HEIGHT + 30);
}

- (void)setRowIndicatorHighlight:(BOOL)highlight {
    if (highlight) {
        _rowIndicator.color = _indicatorColorHighlight;
    } else {
        _rowIndicator.color = _indicatorColorNormal;
    }
}

- (void)showAOEIndicator {
    _AOEIndicator.visible = YES;
}

- (void)hideAOEIndicator {
    _AOEIndicator.visible = NO;
}

- (void)setAOEIndicatorPosition:(CGPoint)position {
    _AOEIndicator.position = position;
}

@end

