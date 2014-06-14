//
//  THMonster.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"
#import "THMonsterInfo.h"

static const int xLeftBound = 20;
static const int attackRange = 300;

@interface THMonster : THGameObject {
    int _vx;
}

+ (THMonster*)monsterWithInfo:(THMonsterInfo*)monsterInfo;

- (id)initWithInfo:(THMonsterInfo*)monsterInfo;

@property int vx;

@end
