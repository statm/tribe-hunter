//
//  SESlowDown.m
//  TribeHunter
//
//  Created by statm on 2014/3/23.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Effects.h"

@implementation SESlowDown

- (id)init {
    if (self = [super init]) {
        self.type = kEffectTypeIce;
    }
    return self;
}

- (void)apply:(THGameObject*)target {
    target.currentAttributes.speed = target.baseAttributes.speed * .3;
}

- (void)remove:(THGameObject *)target {
    target.currentAttributes.speed /= .3;
}

- (void)update:(ccTime)delta {
    [super update:delta];
    if (_timer > 6.0) {
        self.finished = YES;
    }
}

@end
