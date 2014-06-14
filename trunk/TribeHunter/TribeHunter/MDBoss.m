//
//  MDBoss.m
//  TribeHunter
//
//  Created by Student on 4/20/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "Monsters.h"
#import "Skills.h"

@implementation MDBoss

- (id)init {
    if (self = [super init]) {
        _attributes = [[THAttributes alloc] init];
        _attributes.HP = 10000;
        _attributes.attackPower = 60;
        _attributes.speed = .06;
        self.skills = @[ [SDHellFireAttack class] , [SDBossSummon class], [SDDestroyPlant class] ];
        self.animName = @"boss";
    }
    return self;
}

@end
