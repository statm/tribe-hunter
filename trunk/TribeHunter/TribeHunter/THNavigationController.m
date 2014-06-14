//
//  THNavigationController.m
//  TribeHunter
//
//  Created by statm on 2014/3/1.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THNavigationController.h"

@implementation THNavigationController

- (void)navigateTo:(UIViewController*)viewController {
    if ([[self childViewControllers] containsObject:viewController]) {
        [self popToViewController:viewController animated:NO];
    } else {
        [self pushViewController:viewController animated:NO];
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
