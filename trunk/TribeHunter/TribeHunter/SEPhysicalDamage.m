//
//  SEPhysicalDamage.m
//  TribeHunter
//
//  Created by statm on 2014/3/6.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Effects.h"
#import "THHero.h"
#import "THMonster.h"
#import "Macros.h"

@implementation SEPhysicalDamage

- (id)init {
    if (self = [super init]) {
        self.type = kEffectTypePhysical;
    }
    return self;
}

- (void)apply:(THGameObject*)target {
    float damage = self.owner.currentAttributes.attackPower;
    
    target.currentAttributes.HP -= damage;
    [target showDamage:damage];
    
    self.finished = YES;
}

@end
