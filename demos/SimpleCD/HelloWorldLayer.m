//
//  HelloWorldLayer.m
//  SimpleCD
//
//  Created by Yue Cai on 2/12/14.
//  Copyright Yue Cai 2014. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "CoolDown.h"
// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation HelloWorldLayer{
    CCMenuItem *cat;
    CoolDown *bar;
}

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}


- (void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if( bar.ready){
    
        [bar startCD:5.0];
        [self schedule:@selector(update:)];//IF using schedule update would result in a reschedule error
    }
    else
        return;
}
- (void) update:(ccTime)delta{
    if (!bar.ready) {
        [bar update:delta];
    }

}


// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		
        bar = [[[CoolDown alloc] init] initWithFile:@"cat.png" grey:@"catgrey.png"];
        
        [self addChild:bar.body];
        bar.body.position = ccp(200, 200);
        
        [self setIsTouchEnabled:YES];
       
        

	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
