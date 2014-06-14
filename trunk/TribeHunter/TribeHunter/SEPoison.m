//
//  SEPoison.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Effects.h"

@implementation SEPoison {
    float _lastPoisonTime;
}

- (id)init {
    if (self = [super init]) {
        self.type = kEffectTypePoison;
        _lastPoisonTime = -1.000;
    }
    return self;
}

- (void)apply:(THGameObject*)target {
    if (_timer - _lastPoisonTime > 1.0) {
        float damage = target.baseAttributes.HP * .1;
        
        target.currentAttributes.HP -= damage;
        [target showDamage:damage];
        
        if (_lastPoisonTime < 0.) {
            [target showEffectName:@"Poison"];
        }
        
        _lastPoisonTime = _timer;
    }
}

- (void)update:(ccTime)delta {
    [super update:delta];
    if (_timer > 5.0) {
        self.finished = YES;
    }
}

@end
