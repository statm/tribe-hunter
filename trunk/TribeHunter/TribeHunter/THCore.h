//
//  THCore.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "Macros.h"
#import "THNavigationController.h"
#import "THAssetMgr.h"
#import "THProfileMgr.h"
#import "THGame.h"

@interface THCore : NSObject

+ (THCore*)sharedCore;

@property (readonly) UIWindow* window;
@property (readonly) THNavigationController* navigationController;
@property (readonly) THAssetMgr* assetMgr;
@property (readonly) THProfileMgr* profileMgr;
@property (readonly) THGame* game;
@property THMoney* money;

/** 显示欢迎界面 */
- (void)showWelcomeScreen;

/** 显示主界面 */
- (void)showMainScreen;

/** 进入战斗场景 */
- (void)enterGameWithMissionID:(int)missionID;

- (void)addMoneyVal:(int)val;

-(int)getMoneyVal;

- (void) buy;

-(void) shop;

-(int)getItemNum;

-(BOOL) useItem;

@end
