//
//  THCore.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THCore.h"
#import "THNavigationController.h"
#import "THWelcomeScreen.h"
#import "THMainScreen.h"
#import "THMoney.h"

// -----------------------------------------------------------------------
#pragma mark - THCore
// -----------------------------------------------------------------------

@implementation THCore {
    UIWindow* _window;
    THNavigationController* _navigationController;
    THWelcomeScreenController* _welcomeScreenController;
    THMainScreenController* _mainScreenController;
}

static THCore *_core = nil;

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
        
        _navigationController = [[THNavigationController alloc] init];
        _navigationController.navigationBarHidden = YES;
        
        _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        [_window setRootViewController:_navigationController];
        [_window makeKeyAndVisible];
        
        _money = [[THMoney alloc]init];
        
    }
    return self;
}

- (void)showWelcomeScreen {
    THLog(@"%@", @"Show Welcome Screen");
    if (!_welcomeScreenController) {
        _welcomeScreenController = [[THWelcomeScreenController alloc] init];
    }
    
    [_navigationController navigateTo:_welcomeScreenController];
}


- (void)showMainScreen {
    // TODO: 结束当前游戏，清理
    
    THLog(@"%@", @"Show Main Screen");
    if (!_mainScreenController) {
        _mainScreenController = [[THMainScreenController alloc] init];
    }
    
    [_navigationController navigateTo:_mainScreenController];
}


- (void)enterGameWithMissionID:(int)missionID {
    THGameData* gameData = [_profileMgr generateGameDataWithMissionID:missionID];
    
    if (!_game) {
        _game = [THGame gameWithGameData:gameData];
    } else {
        [_game setGameData:gameData];
    }
    
    [_navigationController navigateTo:_game.gameScreenController];
}

-(void)buy{
    if (_money.curmoneyval >= 50) {
        _money.itemNum ++;
        _money.curmoneyval -= 50;
    }
    NSLog(@"%i %i", _money.itemNum,_money.curmoneyval);
}

-(BOOL) useItem {
    if (_money.itemNum > 0) {
        NSLog(@"%i", _money.itemNum);
        _money.itemNum --;
        return true;
    }
    NSLog(@"~~~~%i", _money.itemNum);
    return false;
}

-(void)addMoneyVal:(int)val{
    _money.curmoneyval += val;
}

-(int)getMoneyVal {
    return _money.curmoneyval;
}

-(int)getItemNum{
    return _money.itemNum;
}

@end
