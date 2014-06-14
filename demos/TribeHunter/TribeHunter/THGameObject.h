//
//  THGameObject.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface THGameObject : NSObject {
    CCSprite* _appearance;
    id _info;
    int _x;
    int _y;
}

@property CCSprite* appearance;
@property id info;
@property int x;
@property int y;

- (void)update:(double)delta;

@end
