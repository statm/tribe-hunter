//
//  THMonster.h
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"
#import "THMonsterInfo.h"
#import "THMissionWaveInfo.h"

@interface THMonster : THGameObject

+ (THMonster*)monsterWithInfo:(THMonsterInfo*)monsterInfo
                       region:(int)region;

@property THMonsterInfo* info;

@end
