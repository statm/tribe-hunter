//
//  MDHelmetMonster.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"

@implementation MDHelmetMonster

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 300;
        _attributes.attackPower = 7;
        _attributes.speed = .4;
        self.animName = @"helmet";
    }
    return self;
}


- (void)update:(ccTime)delta {
    [super update:delta];
    
    for (THEffectInfo* effect in self.effects) {
        if (effect.type == kEffectTypeLaser) {
            self.animActionPrefix = @"nonhelmet";
            return;
        }
    }
}

@end
