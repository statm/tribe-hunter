//
//  SEDestroyPlant.m
//  TribeHunter
//
//  Created by Student on 4/20/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Effects.h"

@implementation SEDestroyPlant

- (id)init {
    if (self = [super init]) {
        self.type = kEffectTypeLaser;
    }
    return self;
}

- (void)apply:(THGameObject*)target {
    
    float damage = target.currentAttributes.HP;
    
    target.currentAttributes.HP -= damage;
    [target showDamage:damage];
    
    self.finished = YES;
}

@end
