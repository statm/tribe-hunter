//
//  Bootstrap.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"
#import "THCore.h"

@interface THNavigationController : UINavigationController <CCDirectorDelegate>
@end

@interface THAppController : NSObject <UIApplicationDelegate> {
	UIWindow* _window;
	THNavigationController* _navController;
    
	CCDirectorIOS* _director;
}

@property (nonatomic, strong) UIWindow* window;
@property (readonly) THNavigationController* navController;
@property (readonly) CCDirectorIOS* director;

@end