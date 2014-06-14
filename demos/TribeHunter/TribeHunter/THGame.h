//
//  THGame.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/11.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "Macros.h"
#import "THGameScreen.h"
#import "THGameData.h"
#import "THGameObject.h"

// -----------------------------------------------------------------------
#pragma mark - THGameState
// -----------------------------------------------------------------------

typedef NS_ENUM(NSUInteger, THGameState) {
    kGameStateInit,
    kGameStateReady,
    kGameStatePlaying,
    kGameStatePaused,
    kGameStateEnded
};


// -----------------------------------------------------------------------
#pragma mark - THGame
// -----------------------------------------------------------------------

@interface THGame : NSObject

@property (readonly) THGameState gameState;
@property (readonly) THGameScreen* gameScreen;

+ (THGame*)gameWithGameData:(THGameData*)gameData;

- (void)addGameObject:(THGameObject*)gameObject;

@end
