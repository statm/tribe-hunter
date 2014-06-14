
//
//  THAppController.m
//  TribeHunter
//
//  Created by statm on 2014/3/1.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAppController.h"
#import "THWelcomeScreen.h"
#import "THCore.h"

@implementation THAppController

@synthesize window=_window, navController=_navController, director=_director;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // core init
    [THCore sharedCore];
    
    // show welcome screen
    [[THCore sharedCore] showMainScreen];
    return YES;
}

// TODO: REWRITE EVERYTHING BELOW!

// getting a call, pause the game
-(void) applicationWillResignActive:(UIApplication *)application {
//	if( [_navController visibleViewController] == _director )
//		[_director pause];
}

// call got rejected
-(void) applicationDidBecomeActive:(UIApplication *)application {
//	[[CCDirector sharedDirector] setNextDeltaTimeZero:YES];
//	if( [_navController visibleViewController] == _director )
//		[_director resume];
}

-(void) applicationDidEnterBackground:(UIApplication*)application {
//	if( [_navController visibleViewController] == _director )
//		[_director stopAnimation];
}

-(void) applicationWillEnterForeground:(UIApplication*)application {
//	if( [_navController visibleViewController] == _director )
//		[_director startAnimation];
}

// application will be killed
- (void)applicationWillTerminate:(UIApplication *)application {
//	CC_DIRECTOR_END();
}

// purge memory
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
//	[[CCDirector sharedDirector] purgeCachedData];
}

// next delta time will be zero
-(void) applicationSignificantTimeChange:(UIApplication *)application {
//	[[CCDirector sharedDirector] setNextDeltaTimeZero:YES];
}

@end