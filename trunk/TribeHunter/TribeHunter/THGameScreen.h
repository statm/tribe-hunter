//
//  THGameScreen.h
//  TribeHunter
//
//  Created by statm on 2014/3/1.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import "THGameScene.h"
#import "THGameUI.h"
#import "THNavigationController.h"

@interface THGameScreen : UIView
@property (readonly) THGameUI* gameUI;
@property (readonly) THGameScene* gameScene;
- (void)showPausePanel;
- (void)hidePausePanel;
- (void)showWinPanel;
- (void)showLosePanel;
- (void)showShopPanel;
- (void)hideShopPanel;
- (void)showCuePointPanel: (NSString *) cueName;
- (void)hideModal;
@end

@interface THGameScreenController : UIViewController
@end

@interface THNavigationController (Cocos2dSupport) <CCDirectorDelegate>
@end