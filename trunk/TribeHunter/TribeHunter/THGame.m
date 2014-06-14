//
//  THGame.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/11.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGame.h"
#import "THCore.h"
#import "THGameData.h"
#import "THGameEventQueue.h"
#import "THMissionWaveInfo.h"
#import "THMonsterWaveEvent.h"
#import "THHero.h"
#import "THWeapon.h"
#import "THMonster.h"
#import "Skills.h"
#import "THSkillCDInfo.h"
#import "THCuePointEvent.h"
#import "THCuePointInfo.h"
#import "THSound.h"



@implementation THGame {
    THGameScreenController* _gameScreenController;
    THGameScreen* _gameScreen;
    
    ccTime _gameClock;
    THGameEventQueue *_gameEventQueue;
    
    THGameData* _gameData;
    NSMutableArray* _gameObjects;
    THGameState _gameState;
    
    THHero* _hero;
    THMoney* _money;
    
    THSkillInfo* _currentSkill;
    THSkillCDInfo* _skillTable;
    
    int _monsterCount;
    
    BOOL _isTouching;
    CGPoint _touchLocation;
    BOOL _touchSuppressed;
}


// -----------------------------------------------------------------------
#pragma mark - 初始化
// -----------------------------------------------------------------------

+ (THGame*)gameWithGameData:(THGameData*)gameData {
    return [[self alloc] initWithGameData:gameData];
}

- (id)initWithGameData:(THGameData*)gameData {
    if (self = [super init]) {
        
        _gameData = gameData;
        _gameState = kGameStateReady;
        _gameClock = 0.;
        _gameScreenController = [[THGameScreenController alloc] init];
        _gameScreen = (THGameScreen*)_gameScreenController.view;
        _gameObjects = [NSMutableArray array];
        _isTouching = NO;
        
        
        // 初始化事件队列
        _monsterCount = 0;
        _gameEventQueue = [THGameEventQueue queue];
        for (THMissionWaveInfo* waveInfo in gameData.mission.waves) {
            [_gameEventQueue addGameEvent:[THMonsterWaveEvent eventWithWaveInfo:waveInfo]];
            for (THMonsterSpawnInfo* spawn in waveInfo.spawn) {
                _monsterCount += spawn.minCount;
            }
        }
        
        for(THCuePointInfo *info in gameData.mission.cuePointWaves) {
            [_gameEventQueue addGameEvent:[THCuePointEvent eventWithInfo:info]];
        }
        THLog(@" %d waves added into GameEventQueue", gameData.mission.waves.count);
        
        
        // 添加主角
        _hero = [[THHero alloc] init];
        [self addGameObject:_hero];
        [_gameScreen.gameScene setRowIndicatorPosition:_hero.y];
        
        // 加载资源
        [self loadAssets];
        
        // 技能组
//        NSArray* skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init], [[SDLaserAttack alloc] init], [[SDPoisonAttack alloc] init], [[SDPlant alloc] init]];
//        _skillTable = [[THSkillCDInfo alloc] initWithSkills:skills];
//        [_gameScreen.gameUI setSkills:skills];
        //[[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"background-music-aac.caf"];
        
        // Money Added
      //  _money = [[THMoney alloc] init];
        
        [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:self priority:0 paused:NO];
        
    }
    return self;
}

- (void)setGameData:(THGameData*)gameData {
    _gameData = gameData;
    _gameState = kGameStateReady;
    _gameClock = 0.;
    _isTouching = NO;
    
    [_gameScreen hideModal];
    
    for (int i = _gameObjects.count - 1; i >= 0; i--) {
        THGameObject* gameObject = _gameObjects[i];
        [self removeGameObject:gameObject];
    }
    
    // 初始化事件队列
    _monsterCount = 0;
    _gameEventQueue = [THGameEventQueue queue];
    for (THMissionWaveInfo* waveInfo in gameData.mission.waves) {
        [_gameEventQueue addGameEvent:[THMonsterWaveEvent eventWithWaveInfo:waveInfo]];
        for (THMonsterSpawnInfo* spawn in waveInfo.spawn) {
            _monsterCount += spawn.minCount;
        }
    }
    
    for(THCuePointInfo *info in gameData.mission.cuePointWaves) {
        [_gameEventQueue addGameEvent:[THCuePointEvent eventWithInfo:info]];
    }
    THLog(@" %d waves added into GameEventQueue", gameData.mission.waves.count);
    
    
    // 添加主角
    _hero = [[THHero alloc] init];
    [self addGameObject:_hero];
    [_gameScreen.gameScene setRowIndicatorPosition:_hero.y];
    
    // 技能组
//    NSArray* skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init], [[SDLaserAttack alloc] init], [[SDPoisonAttack alloc] init], [[SDPlant alloc] init]];
//    _skillTable = [[THSkillCDInfo alloc] initWithSkills:skills];
//    [_gameScreen.gameUI setSkills:skills];
    
    // Money Added
    _money = [[THMoney alloc] init];
    
    [[CCDirector sharedDirector] drawScene];
    [THSound stopMusic];
    [THSound playMusic:@"BGM.mp3"];
}

- (void)setSkills:(NSArray*)skills {
    _skillTable = [[THSkillCDInfo alloc] initWithSkills:skills];
    [_gameScreen.gameUI setSkills:skills];
}

- (void)addMonsterCount {
    _monsterCount ++;
}

- (void)loadAssets {
    THAssetMgr* assetMgr = [[THCore sharedCore] assetMgr];
    [assetMgr loadAnimationAsset:@"arrow"];
    [assetMgr loadAnimationAsset:@"hellfire"];
    [assetMgr loadAnimationAsset:@"frost"];
    [assetMgr loadAnimationAsset:@"branch"];
    [THSound preloadEffect:@"die.wav"];
    [THSound preloadEffect:@"win.mp3"];
    [THSound preloadEffect:@"lose.mp3"];
    [THSound preloadEffect:@"hit.wav"];
    [THSound preloadMusic:@"die.wav"];
    [THSound preloadMusic:@"win.mp3"];
    [THSound preloadMusic:@"lose.mp3"];
    [THSound preloadMusic:@"hit.wav"];
    [THSound preloadMusic:@"BGM.mp3"];

}


// -----------------------------------------------------------------------
#pragma mark - 主循环 & 游戏对象管理
// -----------------------------------------------------------------------

- (void)update:(ccTime)delta {
    
    // 更新游戏时钟
    _gameClock += delta;
//    THLog(@"game clock=%.6f", _gameClock);
    
    // 从事件队列取出当前帧的事件，全部处理
    NSMutableArray *gameEvents = [_gameEventQueue searchGameEvent:_gameClock];
    for (int i = 0; i < [gameEvents count]; i++) {
        THGameEvent *event = [gameEvents objectAtIndex:i];
        [event executeEvent:self];
    }
    
    // 遍历所有 GameObject，全部更新
    for (int i = _gameObjects.count - 1; i >= 0; i--) {
        THGameObject* gameObject = _gameObjects[i];
        if (gameObject.needToRemove) {
            [self removeGameObject:gameObject];
        } else {
            [gameObject update:delta];
        }
    }
    
    
    // 更新游戏 UI
    [_skillTable update:delta];
    [_gameScreen.gameUI updateWithCurrentHP:_hero.currentAttributes.HP totalHP:_hero.baseAttributes.HP coolDown:[_skillTable getCDRate]];
    if (!_currentSkill) {
        [_gameScreen.gameScene setRowIndicatorPosition:_hero.y];
    }
    
    // 判断游戏状态
    if (_hero.currentAttributes.HP == 0) {
        [self lose];
    } else if (_monsterCount == 0) {
        [[THCore sharedCore]addMoneyVal:500];
        [self win];
    }
}


- (void)addGameObject:(THGameObject*)gameObject {
    [_gameObjects addObject:gameObject];
    if (gameObject.appearance) {
        [_gameScreen.gameScene addChild:gameObject.appearance];
    }
//    THLog(@" game object added, GO#=%d", [_gameObjects count]);
}

- (void)removeGameObject:(THGameObject*)gameObject {
    if ([_gameObjects containsObject:gameObject]) {
        [_gameObjects removeObject:gameObject];
    }
    
    if (gameObject.appearance
        && [_gameScreen.gameScene.children containsObject:gameObject.appearance]) {
        [_gameScreen.gameScene removeChild:gameObject.appearance];
    }
    
    if ([gameObject isMemberOfClass:[THMonster class]]) {
        _monsterCount--;
    }
    
//    THLog(@" game object removed, GO#=%d", [_gameObjects count]);
}

- (NSArray*)filterGameObjectsWithTypes:(int)typeMask {
    NSMutableArray* result = [NSMutableArray array];
    
    for (THGameObject* gameObject in _gameObjects) {
        if ((gameObject.type & typeMask) != 0
            && gameObject.currentAttributes.HP > 0) {
            [result addObject:gameObject];
        }
    }
    
    return result;
}


// -----------------------------------------------------------------------
#pragma mark - 游戏进程控制
// -----------------------------------------------------------------------

- (void)start {
    [[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] startAnimation];
    
    _gameState = kGameStatePlaying;
    THLog(@"%@", @" >>> Game Started");
}

- (void)pause {
    [[CCDirector sharedDirector] pause];
    _gameState = kGameStatePaused;
    
    [_gameScreen showPausePanel];
    
    THLog(@"%@", @" >>> Game Paused");
}

- (void)resume {
    [[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] startAnimation];
    
    _gameState = kGameStatePlaying;
    
    [_gameScreen hidePausePanel];
    
    THLog(@"%@", @" >>> Game Resumed");
}


- (void)win {
    [[CCDirector sharedDirector] pause];
    _gameState = kGameStateEnded;
    
    [_gameScreen showWinPanel];
    [THSound stopMusic];
    [THSound playMusic:@"win.mp3" loop:YES];

}

- (void)lose {
    [[CCDirector sharedDirector] pause];
    _gameState = kGameStateEnded;
    
    [_gameScreen showLosePanel];
    [THSound stopMusic];
    [THSound playMusic:@"lose.mp3" loop:YES];
}

- (void)cue {
    [[CCDirector sharedDirector] pause];
    _gameState = kGameStatePaused;
    
    THLog(@"%@", @" >>> Game Paused for cue");
}

-(void)shop {
    [_gameScreen showShopPanel];
    [[CCDirector sharedDirector] pause];
    _gameState = kGameStatePaused;
}

-(void)leaveShop {
    [_gameScreen hideShopPanel];
    
    [[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] startAnimation];
    _gameState = kGameStatePlaying;
    
}

-(void) use {
    NSLog(@"~~~ %i", _hero.currentAttributes.HP);
    if (_hero.currentAttributes.HP < 500) {
        NSLog(@"%i", _hero.currentAttributes.HP);
        if ([[THCore sharedCore] useItem]) {
            if(_hero.currentAttributes.HP + 100 > 500)
                _hero.currentAttributes.HP = 500;
            else
                _hero.currentAttributes.HP += 100;
            NSLog(@" --- %i", _hero.currentAttributes.HP);
        }
    }
}


// -----------------------------------------------------------------------
#pragma mark - 交互控制
// -----------------------------------------------------------------------

- (void)onTouchBegan:(CGPoint)location {
//    THLog(@" touchBegan: %f, %f", location.x, location.y);
    
    _isTouching = YES;
    _touchLocation = location;
    _touchSuppressed = NO;
    
    if (_currentSkill && !_currentSkill.isAOE) {
        [self castSkill];
    }
    
    if (_gameState == kGameStateReady) {
        [self start];
    } else if (_gameState == kGameStatePaused) {
        [self resume];
    } else if (_gameState == kGameStatePlaying) {
        [_gameScreen.gameScene setRowIndicatorHighlight:YES];
        
        if (!_currentSkill
            || !_currentSkill.isAOE) {
            _hero.y = P2R(location.y);
        } else {
            [_gameScreen.gameScene setRowIndicatorPosition:P2R(location.y)];
            [_gameScreen.gameScene showAOEIndicator];
            [_gameScreen.gameScene setAOEIndicatorPosition:CGPointMake(location.x, R2P(P2R(location.y)))];
        }
    }
}

- (void)onTouchMoved:(CGPoint)location {
//    THLog(@" touchMoved: %f, %f", location.x, location.y);
    _isTouching = YES;
    _touchLocation = location;
    
    [_gameScreen.gameScene setRowIndicatorHighlight:YES];
    
    if (!_currentSkill
        || !_currentSkill.isAOE) {
        _hero.y = P2R(location.y);
    } else {
        [_gameScreen.gameScene setRowIndicatorPosition:P2R(location.y)];
        [_gameScreen.gameScene setAOEIndicatorPosition:CGPointMake(location.x, R2P(P2R(location.y)))];
    }
}

- (void)onTouchEnded:(CGPoint)location {
//    THLog(@" touchEnded: %f, %f", location.x, location.y);
    _isTouching = NO;
    
    [_gameScreen.gameScene setRowIndicatorHighlight:NO];
    
    if (!_currentSkill
        || !_currentSkill.isAOE) {
        _hero.y = P2R(location.y);
    } else {
        [_gameScreen.gameScene setRowIndicatorPosition:P2R(location.y)];
        [_gameScreen.gameScene hideAOEIndicator];
    }
    
    if (_currentSkill && !_touchSuppressed) {
        [self castSkill];
    }
}


// -----------------------------------------------------------------------
#pragma mark - 技能
// -----------------------------------------------------------------------

- (void)selectSkill:(THSkillInfo*)skill {
    if ([_skillTable isSkillReady:skill]) {
        _currentSkill = skill;
        [_gameScreen.gameUI setSelectedSkill:skill];
        
        if (_isTouching) {
            if (!skill.isAOE) {
                [self castSkill];
            } else {
                _touchSuppressed = YES;
            }
        }
    }
}

- (void)cancelSkillSelection {
    _currentSkill = nil;
}

- (void)castSkill {
    float sx = (!_currentSkill.isAOE ? _hero.x : _touchLocation.x);
    THWeapon* weapon = [[THWeapon alloc] initWithSkill:_currentSkill
                                                     x:sx
                                                     y:P2R(_touchLocation.y)
                                                 owner:_hero
                                             direction:kWeaponDirectionRight
                                           targetTypes:kGameObjectTypeMonster];
    [self addGameObject:weapon];
    
    [_skillTable startCDSkill:_currentSkill];
    
    _currentSkill = nil;
    _touchSuppressed = NO;
    [_gameScreen.gameUI setSelectedSkill:nil];
}


@end
