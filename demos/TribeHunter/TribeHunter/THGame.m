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
#import "THMonster.h"
#import "THWeapon.h"

@implementation THGame {
    THGameData* _gameData;
    ccTime _gameClock;
    THGameScreen* _gameScreen;
    NSMutableArray* _gameObjects;
    THMissionInfo* _currentMission;
    THGameEventQueue *_gameEventQueue;
}

+ (THGame*)gameWithGameData:(THGameData*)gameData {
    return [[self alloc] initWithGameData:gameData];
}

- (id)initWithGameData:(THGameData*)gameData {
    if (self = [super init]) {
        _gameData = gameData;
        _gameState = kGameStateInit;
        _gameClock = 0;
        _gameScreen = [THGameScreen gameScreen];
        _gameObjects = [NSMutableArray array];

        // 初始化事件队列
        _gameEventQueue = [THGameEventQueue queue];
        for (THMissionWaveInfo* waveInfo in gameData.mission.waves) {
            [_gameEventQueue addGameEvent:[THMonsterWaveEvent eventWithWaveInfo:waveInfo]];
        }
        THLog(@" %d waves added into GameEventQueue", gameData.mission.waves.count);

        // 添加主角
        THHero* hero = [[THHero alloc] init];
        [self addGameObject:hero];

        // TEST ONLY
        THWeapon* weapon = [[THWeapon alloc] initWithTarget:CGPointMake(400, 220) attkType:1 attkPosX:20 attkPosY:160 attkDir:1];
        [self addGameObject:weapon];

        THMonsterInfo* mi = [[THMonsterInfo alloc] init];
        mi.type = kMonsterTypeRanged;
        THMonster* mf = [[THMonster alloc] initWithInfo:mi ];
        [self addGameObject:mf];
        
        THMonsterInfo* mj = [[THMonsterInfo alloc] init];
        mj.type = kMonsterTypeMelee;
        THMonster* mg = [[THMonster alloc] initWithInfo:mj ];
        [self addGameObject:mg];


        // TEST ONLY
        [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:self priority:0 paused:NO];
    }
    return self;
}


- (void)update:(ccTime)delta {
    // 更新游戏时钟
    _gameClock += delta;
    THLog(@"game clock=%.6f", _gameClock);

    // 从事件队列取出当前帧的事件，全部处理
    NSMutableArray *gameEvents = [_gameEventQueue searchGameEvent:_gameClock];
    for (int i = 0; i < [gameEvents count]; i++) {
        THGameEvent *event = [gameEvents objectAtIndex:i];
        [event executeEvent:self];
    }

    // 遍历所有 GameObject，全部更新
    for (THGameObject* gameObject in _gameObjects) {
        [gameObject update:delta];
    }

    // TODO: 更新游戏状态（技能冷却等）
    //

    // TODO: 更新游戏 UI
    //
}


- (void)addGameObject:(THGameObject*)gameObject {
    [_gameObjects addObject:gameObject];
    if (gameObject.appearance) {
        [_gameScreen addChild:gameObject.appearance];
    }
    THLog(@" game object added, GO#=%d", [_gameObjects count]);
}

@end
