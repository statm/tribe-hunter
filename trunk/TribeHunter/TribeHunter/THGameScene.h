//
//  THGameScene.h
//  TribeHunter
//
//  Created by statm on 2014/3/2.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "cocos2d.h"

@interface THGameScene : CCScene <CCTouchOneByOneDelegate>

- (void)setRowIndicatorPosition:(int)y;

- (void)setRowIndicatorHighlight:(BOOL)highlight;

- (void)showAOEIndicator;

- (void)hideAOEIndicator;

- (void)setAOEIndicatorPosition:(CGPoint)position;

@end
