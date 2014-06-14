//
//  THGame.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/11.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "Macros.h"
#import "THGameData.h"
#import "THGameObject.h"
#import "THGameScreen.h"
#import "THHero.h"
#import "THMonster.h"
#import "THSkillInfo.h"
#import "THMoney.h"

// -----------------------------------------------------------------------
#pragma mark - THGameState
// -----------------------------------------------------------------------

typedef NS_ENUM(NSUInteger, THGameState) {
    kGameStateReady,
    kGameStatePlaying,
    kGameStatePaused,
    kGameStateEnded
};


// -----------------------------------------------------------------------
#pragma mark - THGame
// -----------------------------------------------------------------------

@interface THGame : NSObject

@property (readonly) ccTime gameClock;
@property (readonly) THGameState gameState;
@property (readonly) THGameScreen* gameScreen;
@property (readonly) THGameScreenController* gameScreenController;
@property (readonly) THHero* hero;

+ (THGame*)gameWithGameData:(THGameData*)gameData;

- (void)setGameData:(THGameData*)gameData;

- (void)setSkills:(NSArray*)skills;

- (void)addGameObject:(THGameObject*)gameObject;

- (void)addMonsterCount;

- (NSArray*)filterGameObjectsWithTypes:(int)typeMask;

- (void) leaveShop;

-(void) shop;

-(void) use;

// -----------------------------------------------------------------------
#pragma mark - 进度控制
// -----------------------------------------------------------------------

- (void)start;

- (void)pause;

- (void)resume;

- (void)cue;

// -----------------------------------------------------------------------
#pragma mark - 触摸响应
// -----------------------------------------------------------------------

- (void)onTouchBegan:(CGPoint)location;

- (void)onTouchMoved:(CGPoint)location;

- (void)onTouchEnded:(CGPoint)location;


// -----------------------------------------------------------------------
#pragma mark - 技能
// -----------------------------------------------------------------------

- (void)selectSkill:(THSkillInfo*)skill;

- (void)cancelSkillSelection;


@end
