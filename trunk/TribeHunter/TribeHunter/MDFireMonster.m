//
//  MDFireMonster.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"

@implementation MDFireMonster

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 140;
        _attributes.attackPower = 10;
        _attributes.speed = .8;
        self.animName = @"fire";
    }
    return self;
}

- (void)update:(ccTime)delta {
    [super update:delta];
    
    for (THEffectInfo* effect in self.effects) {
        if (effect.type == kEffectTypeIce) {
            self.animActionPrefix = @"nonfire";
            return;
        }
    }
}

@end
