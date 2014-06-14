//
//  THCore.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THCore.h"

// -----------------------------------------------------------------------
#pragma mark - THCore
// -----------------------------------------------------------------------

@implementation THCore

static THCore *_core = nil;

@synthesize mainScreen=_mainScreen;

+ (THCore*)sharedCore {
    if (!_core) {
        _core = [[self alloc] init];
    }
    
    return _core;
}

- (id)init {
    if (self = [super init]) {
        THLog(@"%@", @"Core init >>>");
        _assetMgr = [[THAssetMgr alloc] init];
        _profileMgr = [[THProfileMgr alloc] init];
        THLog(@"%@", @"<<< Core init");
    }
    return self;
}

- (THMainScreen*)mainScreen {
    if (!_mainScreen) {
        _mainScreen = [THMainScreen mainScreen];
    }
    return _mainScreen;
}

- (void)enterGameWithMissionID:(int)missionID {
    if (_game) {
        // TODO: 销毁当前存在的 THGame 实例
    }
    
    THGameData* gameData = [_profileMgr generateGameDataWithMissionID:missionID];
    _game = [THGame gameWithGameData:gameData];
    [[CCDirector sharedDirector] replaceScene:[_game gameScreen]];
}

- (void)returnToMainScreen {
    // TODO: 结束当前游戏，清理
    [[CCDirector sharedDirector] replaceScene: _mainScreen];
}

@end
