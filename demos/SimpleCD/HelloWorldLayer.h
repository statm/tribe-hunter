//
//  HelloWorldLayer.h
//  SimpleCD
//
//  Created by Yue Cai on 2/12/14.
//  Copyright Yue Cai 2014. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayerColor <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
}
@property (copy) CCProgressTimer* catTimer;
// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
