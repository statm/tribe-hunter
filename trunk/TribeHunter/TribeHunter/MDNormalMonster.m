//
//  MDNormalMonster.m
//  TribeHunter
//
//  Created by Student on 3/22/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"
#import "Skills.h"

@implementation MDNormalMonster

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 100;
        _attributes.attackPower = 15;
        _attributes.speed = .2;
        self.animName = @"normal";
    }
    return self;
}

@end
