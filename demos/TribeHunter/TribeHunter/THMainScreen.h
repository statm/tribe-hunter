//
//  THMainScreen.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/15.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"

@interface THMainScreen : CCScene <CCTouchOneByOneDelegate> {
    CCLayer* _popUpLayer;
}

+ (THMainScreen*)mainScreen;

@end
