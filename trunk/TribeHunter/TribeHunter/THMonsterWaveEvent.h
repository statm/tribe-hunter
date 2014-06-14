//
//  THMonsterWaveEvent.h
//  TribeHunter
//
//  Created by Renjie Zhao on 2014/2/22.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameEvent.h"
#import "THMissionWaveInfo.h"
#import "Macros.h"

@interface THMonsterWaveEvent : THGameEvent

+ (THMonsterWaveEvent*)eventWithWaveInfo:(THMissionWaveInfo*)waveInfo;

@end
