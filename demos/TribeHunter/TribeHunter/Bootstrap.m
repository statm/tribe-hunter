//
//  Bootstrap.m
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/9.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Bootstrap.h"

// -----------------------------------------------------------------------
#pragma mark - THNavigationController
// -----------------------------------------------------------------------

@implementation THNavigationController

-(NSUInteger)supportedInterfaceOrientations {
	
	// iPhone only
	if( [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone )
		return UIInterfaceOrientationMaskLandscape;
	
	// iPad only
	return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// iPhone only
	if( [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone )
		return UIInterfaceOrientationIsLandscape(interfaceOrientation);
	
	// iPad only
	// iPhone only
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

-(void) directorDidReshapeProjection:(CCDirector*)director {
    // show main screen
    if (director.runningScene == nil) {
        [director runWithScene:[[THCore sharedCore] mainScreen]];
    }
}
@end

// -----------------------------------------------------------------------
#pragma mark - THAppController
// -----------------------------------------------------------------------

@implementation THAppController

@synthesize window=_window, navController=_navController, director=_director;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	CCGLView *glView = [CCGLView viewWithFrame:[_window bounds]
								   pixelFormat:kEAGLColorFormatRGB565
								   depthFormat:0
							preserveBackbuffer:NO
									sharegroup:nil
								 multiSampling:NO
							   numberOfSamples:0];
	
	_director = (CCDirectorIOS*) [CCDirector sharedDirector];
	
	_director.wantsFullScreenLayout = YES;
	
	// Display FSP and SPF
	[_director setDisplayStats:YES];
	
	// set FPS at 60
	[_director setAnimationInterval:1.0/60];
	
	// attach the openglView to the director
	[_director setView:glView];
	
	// 2D projection
	[_director setProjection:kCCDirectorProjection2D];
	//	[director setProjection:kCCDirectorProjection3D];
	
	// Enables High Res mode (Retina Display) on iPhone 4 and maintains low res on all other devices
	if( ! [_director enableRetinaDisplay:YES] )
		CCLOG(@"Retina Display Not supported");
	
	// Default texture format for PNG/BMP/TIFF/JPEG/GIF images
	// It can be RGBA8888, RGBA4444, RGB5_A1, RGB565
	// You can change this setting at any time.
	[CCTexture2D setDefaultAlphaPixelFormat:kCCTexture2DPixelFormat_RGBA8888];
	
	// If the 1st suffix is not found and if fallback is enabled then fallback suffixes are going to searched. If none is found, it will try with the name without suffix.
	// On iPad HD  : "-ipadhd", "-ipad",  "-hd"
	// On iPad     : "-ipad", "-hd"
	// On iPhone HD: "-hd"
	CCFileUtils *sharedFileUtils = [CCFileUtils sharedFileUtils];
	[sharedFileUtils setEnableFallbackSuffixes:NO];				// Default: NO. No fallback suffixes are going to be used
	[sharedFileUtils setiPhoneRetinaDisplaySuffix:@"-hd"];		// Default on iPhone RetinaDisplay is "-hd"
	[sharedFileUtils setiPadSuffix:@"-ipad"];					// Default on iPad is "ipad"
	[sharedFileUtils setiPadRetinaDisplaySuffix:@"-ipadhd"];	// Default on iPad RetinaDisplay is "-ipadhd"
	
	// Assume that PVR images have premultiplied alpha
	[CCTexture2D PVRImagesHavePremultipliedAlpha:YES];
	
	// Create a Navigation Controller with the Director
	_navController = [[THNavigationController alloc] initWithRootViewController:_director];
	_navController.navigationBarHidden = YES;
    
	// for rotation and other messages
	[_director setDelegate:_navController];
	
	// set the Navigation Controller as the root view controller
	[_window setRootViewController:_navController];
    
    
    // Core init
    [THCore sharedCore];
	
	// make main window visible
	[_window makeKeyAndVisible];
    
    return YES;
}


// getting a call, pause the game
-(void) applicationWillResignActive:(UIApplication *)application {
	if( [_navController visibleViewController] == _director )
		[_director pause];
}

// call got rejected
-(void) applicationDidBecomeActive:(UIApplication *)application {
	[[CCDirector sharedDirector] setNextDeltaTimeZero:YES];
	if( [_navController visibleViewController] == _director )
		[_director resume];
}

-(void) applicationDidEnterBackground:(UIApplication*)application {
	if( [_navController visibleViewController] == _director )
		[_director stopAnimation];
}

-(void) applicationWillEnterForeground:(UIApplication*)application {
	if( [_navController visibleViewController] == _director )
		[_director startAnimation];
}

// application will be killed
- (void)applicationWillTerminate:(UIApplication *)application {
	CC_DIRECTOR_END();
}

// purge memory
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
	[[CCDirector sharedDirector] purgeCachedData];
}

// next delta time will be zero
-(void) applicationSignificantTimeChange:(UIApplication *)application {
	[[CCDirector sharedDirector] setNextDeltaTimeZero:YES];
}

@end