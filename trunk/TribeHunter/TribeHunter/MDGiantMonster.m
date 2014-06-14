//
//  MDGiantMonster.m
//  TribeHunter
//
//  Created by Student on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"

@implementation MDGiantMonster

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 600;
        _attributes.attackPower = 15;
        _attributes.speed = .2;
        self.animName = @"giant";
    }
    return self;
}

@end
