//
//  THCore.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "Macros.h"
#import "THAssetMgr.h"
#import "THProfileMgr.h"
#import "THMainScreen.h"
#import "THGame.h"

@interface THCore : NSObject

+ (THCore*)sharedCore;

@property (readonly) THAssetMgr* assetMgr;
@property (readonly) THProfileMgr* profileMgr;
@property (readonly) THMainScreen* mainScreen;
@property (readonly) THGame* game;

/** 进入战斗场景 */
- (void)enterGameWithMissionID:(int)missionID;

/** 返回主界面 */
- (void)returnToMainScreen;

@end
