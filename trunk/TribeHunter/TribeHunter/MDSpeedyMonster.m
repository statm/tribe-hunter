//
//  MDSpeedyMonster.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"

@implementation MDSpeedyMonster

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 60;
        _attributes.attackPower = 3;
        _attributes.speed = 1.5;
        self.animName = @"fly";
    }
    return self;
}

@end
