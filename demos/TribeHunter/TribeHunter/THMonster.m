//
//  THMonster.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMonster.h"
#import "THAnimation.h"

@implementation THMonster

+ (THMonster*)monsterWithInfo:(THMonsterInfo*)monsterInfo {
    return [[self alloc] initWithInfo:monsterInfo];
}

- (id)initWithInfo:(THMonsterInfo*)monsterInfo {
    if (self=[super init]) {
        _info = monsterInfo;
        _vx = -1;

        THAnimation* anim = [[THAnimation alloc] init];
        [anim load:@"enemy"];
        [anim create:@"enemy" delay:0.1f];
        anim.sprite.position = CGPointMake(480, arc4random() % 320);
        [anim playAnim:@"enemy"];
        _appearance = anim.sprite;
    }
    return self;
}

-(void)update:(double)delta {
    if(((THMonsterInfo*)_info).type == kMonsterTypeMelee)
        _appearance.position = CGPointMake(_appearance.position.x + _vx, _appearance.position.y);
    else {
        if(_appearance.position.x - xLeftBound <= attackRange)
            _appearance.position = CGPointMake(_appearance.position.x, _appearance.position.y);
        else
            _appearance.position = CGPointMake(_appearance.position.x + _vx, _appearance.position.y);
    }
}

@end
