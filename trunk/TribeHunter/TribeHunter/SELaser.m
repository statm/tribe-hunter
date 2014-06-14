//
//  SELaser.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Effects.h"

@implementation SELaser

- (id)init {
    if (self = [super init]) {
        self.type = kEffectTypeLaser;
    }
    return self;
}

- (void)apply:(THGameObject*)target {
    float damage = self.owner.currentAttributes.attackPower * 5;
    
    target.currentAttributes.HP -= damage;
    [target showDamage:damage];
    [target showEffectName:@"Laser"];
    
    self.finished = YES;
}

@end
