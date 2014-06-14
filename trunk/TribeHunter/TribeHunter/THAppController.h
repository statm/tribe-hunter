//
//  THAppController.h
//  TribeHunter
//
//  Created by statm on 2014/3/1.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "THNavigationController.h"

@interface THAppController : NSObject <UIApplicationDelegate> {
	CCDirectorIOS* _director;
}

@property (nonatomic, strong) UIWindow* window;
@property (readonly) THNavigationController* navController;
@property (readonly) CCDirectorIOS* director;

@end