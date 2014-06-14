//
//  THGameContent.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameContent.h"
#import "THMissionWaveInfo.h"
#import "Monsters.h"
#import "THCuePointInfo.h"
#import "Skills.h"

@implementation THGameContent

- (id)init {
    if (self = [super init]) {
        self.missions = @[[self createLevel1], [self createLevel2], [self createLevel3], [self createLevel4]];
    }
    return self;
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THGameContent: missions=%@>",
            _missions];
}

- (THMissionInfo*)createLevel1 {
    THMissionInfo* mission = [[THMissionInfo alloc] init];
    NSMutableArray* waves = [NSMutableArray array];
    mission.waves = waves;
    NSMutableArray* cuePointWaves = [NSMutableArray array];
    mission.cuePointWaves = cuePointWaves;
    
    
    
    // monsters
    THMissionWaveInfo* wave1 = [[THMissionWaveInfo alloc] init];
    wave1.waveTime = 1;
    NSMutableArray* wave1spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave1spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave1spawn1.monsterClass = [MDNormalMonster class];
    wave1spawn1.minCount = 1;
    wave1spawn1.maxCount = 1;
    wave1spawn1.region = 3;
    [wave1spawn addObject:wave1spawn1];
    wave1.spawn = wave1spawn;
    [waves addObject:wave1];
    
    THMissionWaveInfo* wave3 = [[THMissionWaveInfo alloc] init];
    wave3.waveTime = 4;
    NSMutableArray* wave3spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave3spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave3spawn1.monsterClass = [MDNormalMonster class];
    wave3spawn1.minCount = 1;
    wave3spawn1.maxCount = 1;
    wave3spawn1.region = 4;
    [wave3spawn addObject:wave3spawn1];
    wave3.spawn = wave3spawn;
    [waves addObject:wave3];
    
    THMissionWaveInfo* wave4 = [[THMissionWaveInfo alloc] init];
    wave4.waveTime = 4;
    NSMutableArray* wave4spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave4spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave4spawn1.monsterClass = [MDNormalMonster class];
    wave4spawn1.minCount = 1;
    wave4spawn1.maxCount = 1;
    wave4spawn1.region = 1;
    [wave4spawn addObject:wave4spawn1];
    wave4.spawn = wave4spawn;
    [waves addObject:wave4];
    
    THMissionWaveInfo* wave6 = [[THMissionWaveInfo alloc] init];
    wave6.waveTime = 8;
    NSMutableArray* wave6spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave6spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave6spawn1.monsterClass = [MDNormalMonster class];
    wave6spawn1.minCount = 1;
    wave6spawn1.maxCount = 1;
    wave6spawn1.region = 5;
    [wave6spawn addObject:wave6spawn1];
    wave6.spawn = wave6spawn;
    [waves addObject:wave6];
    
    THMissionWaveInfo* wave7 = [[THMissionWaveInfo alloc] init];
    wave7.waveTime = 8;
    NSMutableArray* wave7spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave7spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave7spawn1.monsterClass = [MDNormalMonster class];
    wave7spawn1.minCount = 1;
    wave7spawn1.maxCount = 1;
    wave7spawn1.region = 3;
    [wave7spawn addObject:wave7spawn1];
    wave7.spawn = wave7spawn;
    [waves addObject:wave7];
    
    THMissionWaveInfo* wave8 = [[THMissionWaveInfo alloc] init];
    wave8.waveTime = 8;
    NSMutableArray* wave8spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave8spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave8spawn1.monsterClass = [MDNormalMonster class];
    wave8spawn1.minCount = 1;
    wave8spawn1.maxCount = 1;
    wave8spawn1.region = 0;
    [wave8spawn addObject:wave8spawn1];
    wave8.spawn = wave8spawn;
    [waves addObject:wave8];
    
    
    THCuePointInfo *point1 = [[THCuePointInfo alloc] init];
    point1.eventTime = 13;
    point1.cueName = @"cuepoint-1.png";
    point1.skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init]];
    [cuePointWaves addObject:point1];
    
    
    THMissionWaveInfo* wave10 = [[THMissionWaveInfo alloc] init];
    wave10.waveTime = 14;
    NSMutableArray* wave10spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave10spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave10spawn1.monsterClass = [MDSpeedyMonster class];
    wave10spawn1.minCount = 1;
    wave10spawn1.maxCount = 1;
    wave10spawn1.region = 3;
    [wave10spawn addObject:wave10spawn1];
    wave10.spawn = wave10spawn;
    [waves addObject:wave10];
    
    THMissionWaveInfo* wave11 = [[THMissionWaveInfo alloc] init];
    wave11.waveTime = 15;
    NSMutableArray* wave11spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave11spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave11spawn1.monsterClass = [MDSpeedyMonster class];
    wave11spawn1.minCount = 1;
    wave11spawn1.maxCount = 1;
    wave11spawn1.region = 3;
    [wave11spawn addObject:wave11spawn1];
    wave11.spawn = wave11spawn;
    [waves addObject:wave11];
    
    THMissionWaveInfo* wave12 = [[THMissionWaveInfo alloc] init];
    wave12.waveTime = 15;
    NSMutableArray* wave12spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave12spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave12spawn1.monsterClass = [MDSpeedyMonster class];
    wave12spawn1.minCount = 1;
    wave12spawn1.maxCount = 1;
    wave12spawn1.region = 2;
    [wave12spawn addObject:wave12spawn1];
    wave12.spawn = wave12spawn;
    [waves addObject:wave12];
    
    THMissionWaveInfo* wave14 = [[THMissionWaveInfo alloc] init];
    wave14.waveTime = 18;
    NSMutableArray* wave14spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave14spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave14spawn1.monsterClass = [MDSpeedyMonster class];
    wave14spawn1.minCount = 1;
    wave14spawn1.maxCount = 1;
    wave14spawn1.region = 4;
    [wave14spawn addObject:wave14spawn1];
    wave14.spawn = wave14spawn;
    [waves addObject:wave14];
    
    THMissionWaveInfo* wave15 = [[THMissionWaveInfo alloc] init];
    wave15.waveTime = 18;
    NSMutableArray* wave15spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave15spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave15spawn1.monsterClass = [MDSpeedyMonster class];
    wave15spawn1.minCount = 1;
    wave15spawn1.maxCount = 1;
    wave15spawn1.region = 1;
    [wave15spawn addObject:wave15spawn1];
    wave15.spawn = wave15spawn;
    [waves addObject:wave15];
    
    THMissionWaveInfo* wave16 = [[THMissionWaveInfo alloc] init];
    wave16.waveTime = 19;
    NSMutableArray* wave16spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave16spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave16spawn1.monsterClass = [MDSpeedyMonster class];
    wave16spawn1.minCount = 1;
    wave16spawn1.maxCount = 1;
    wave16spawn1.region = 5;
    [wave16spawn addObject:wave16spawn1];
    wave16.spawn = wave16spawn;
    [waves addObject:wave16];
    
    THMissionWaveInfo* wave17 = [[THMissionWaveInfo alloc] init];
    wave17.waveTime = 19;
    NSMutableArray* wave17spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave17spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave17spawn1.monsterClass = [MDSpeedyMonster class];
    wave17spawn1.minCount = 1;
    wave17spawn1.maxCount = 1;
    wave17spawn1.region = 3;
    [wave17spawn addObject:wave17spawn1];
    wave17.spawn = wave17spawn;
    [waves addObject:wave17];
    
    THMissionWaveInfo* wave18 = [[THMissionWaveInfo alloc] init];
    wave18.waveTime = 19;
    NSMutableArray* wave18spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave18spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave18spawn1.monsterClass = [MDSpeedyMonster class];
    wave18spawn1.minCount = 1;
    wave18spawn1.maxCount = 1;
    wave18spawn1.region = 2;
    [wave18spawn addObject:wave18spawn1];
    wave18.spawn = wave18spawn;
    [waves addObject:wave18];
    
    THMissionWaveInfo* wave19 = [[THMissionWaveInfo alloc] init];
    wave19.waveTime = 19;
    NSMutableArray* wave19spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave19spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave19spawn1.monsterClass = [MDSpeedyMonster class];
    wave19spawn1.minCount = 1;
    wave19spawn1.maxCount = 1;
    wave19spawn1.region = 0;
    [wave19spawn addObject:wave19spawn1];
    wave19.spawn = wave19spawn;
    [waves addObject:wave19];
    
    THMissionWaveInfo* wave21 = [[THMissionWaveInfo alloc] init];
    wave21.waveTime = 23;
    NSMutableArray* wave21spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave21spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave21spawn1.monsterClass = [MDSpeedyMonster class];
    wave21spawn1.minCount = 1;
    wave21spawn1.maxCount = 1;
    wave21spawn1.region = 4;
    [wave21spawn addObject:wave21spawn1];
    wave21.spawn = wave21spawn;
    [waves addObject:wave21];
    
    THMissionWaveInfo* wave22 = [[THMissionWaveInfo alloc] init];
    wave22.waveTime = 23;
    NSMutableArray* wave22spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave22spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave22spawn1.monsterClass = [MDSpeedyMonster class];
    wave22spawn1.minCount = 1;
    wave22spawn1.maxCount = 1;
    wave22spawn1.region = 1;
    [wave22spawn addObject:wave22spawn1];
    wave22.spawn = wave22spawn;
    [waves addObject:wave22];
    
    THMissionWaveInfo* wave23 = [[THMissionWaveInfo alloc] init];
    wave23.waveTime = 24;
    NSMutableArray* wave23spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave23spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave23spawn1.monsterClass = [MDNormalMonster class];
    wave23spawn1.minCount = 1;
    wave23spawn1.maxCount = 1;
    wave23spawn1.region = 3;
    [wave23spawn addObject:wave23spawn1];
    wave23.spawn = wave23spawn;
    [waves addObject:wave23];
    
    THMissionWaveInfo* wave24 = [[THMissionWaveInfo alloc] init];
    wave24.waveTime = 24;
    NSMutableArray* wave24spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave24spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave24spawn1.monsterClass = [MDNormalMonster class];
    wave24spawn1.minCount = 1;
    wave24spawn1.maxCount = 1;
    wave24spawn1.region = 2;
    [wave24spawn addObject:wave24spawn1];
    wave24.spawn = wave24spawn;
    [waves addObject:wave24];
    
    THMissionWaveInfo* wave25 = [[THMissionWaveInfo alloc] init];
    wave25.waveTime = 24;
    NSMutableArray* wave25spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave25spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave25spawn1.monsterClass = [MDSpeedyMonster class];
    wave25spawn1.minCount = 1;
    wave25spawn1.maxCount = 1;
    wave25spawn1.region = 5;
    [wave25spawn addObject:wave25spawn1];
    wave25.spawn = wave25spawn;
    [waves addObject:wave25];
    
    THMissionWaveInfo* wave26 = [[THMissionWaveInfo alloc] init];
    wave26.waveTime = 24;
    NSMutableArray* wave26spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave26spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave26spawn1.monsterClass = [MDSpeedyMonster class];
    wave26spawn1.minCount = 1;
    wave26spawn1.maxCount = 1;
    wave26spawn1.region = 3;
    [wave26spawn addObject:wave26spawn1];
    wave26.spawn = wave26spawn;
    [waves addObject:wave26];
    
    THMissionWaveInfo* wave27 = [[THMissionWaveInfo alloc] init];
    wave27.waveTime = 24;
    NSMutableArray* wave27spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave27spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave27spawn1.monsterClass = [MDSpeedyMonster class];
    wave27spawn1.minCount = 1;
    wave27spawn1.maxCount = 1;
    wave27spawn1.region = 2;
    [wave27spawn addObject:wave27spawn1];
    wave27.spawn = wave27spawn;
    [waves addObject:wave27];
    
    THMissionWaveInfo* wave28 = [[THMissionWaveInfo alloc] init];
    wave28.waveTime = 24;
    NSMutableArray* wave28spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave28spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave28spawn1.monsterClass = [MDSpeedyMonster class];
    wave28spawn1.minCount = 1;
    wave28spawn1.maxCount = 1;
    wave28spawn1.region = 0;
    [wave28spawn addObject:wave28spawn1];
    wave28.spawn = wave28spawn;
    [waves addObject:wave28];
    
    THMissionWaveInfo* wave30 = [[THMissionWaveInfo alloc] init];
    wave30.waveTime = 30;
    NSMutableArray* wave30spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave30spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave30spawn1.monsterClass = [MDSpeedyMonster class];
    wave30spawn1.minCount = 1;
    wave30spawn1.maxCount = 1;
    wave30spawn1.region = 4;
    [wave30spawn addObject:wave30spawn1];
    wave30.spawn = wave30spawn;
    [waves addObject:wave30];
    
    THMissionWaveInfo* wave31 = [[THMissionWaveInfo alloc] init];
    wave31.waveTime = 30;
    NSMutableArray* wave31spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave31spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave31spawn1.monsterClass = [MDSpeedyMonster class];
    wave31spawn1.minCount = 1;
    wave31spawn1.maxCount = 1;
    wave31spawn1.region = 1;
    [wave31spawn addObject:wave31spawn1];
    wave31.spawn = wave31spawn;
    [waves addObject:wave31];
    
    THMissionWaveInfo* wave32 = [[THMissionWaveInfo alloc] init];
    wave32.waveTime = 30;
    NSMutableArray* wave32spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave32spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave32spawn1.monsterClass = [MDSpeedyMonster class];
    wave32spawn1.minCount = 1;
    wave32spawn1.maxCount = 1;
    wave32spawn1.region = 3;
    [wave32spawn addObject:wave32spawn1];
    wave32.spawn = wave32spawn;
    [waves addObject:wave32];
    
    THMissionWaveInfo* wave33 = [[THMissionWaveInfo alloc] init];
    wave33.waveTime = 31;
    NSMutableArray* wave33spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave33spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave33spawn1.monsterClass = [MDSpeedyMonster class];
    wave33spawn1.minCount = 1;
    wave33spawn1.maxCount = 1;
    wave33spawn1.region = 5;
    [wave33spawn addObject:wave33spawn1];
    wave33.spawn = wave33spawn;
    [waves addObject:wave33];
    
    THMissionWaveInfo* wave34 = [[THMissionWaveInfo alloc] init];
    wave34.waveTime = 31;
    NSMutableArray* wave34spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave34spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave34spawn1.monsterClass = [MDSpeedyMonster class];
    wave34spawn1.minCount = 1;
    wave34spawn1.maxCount = 1;
    wave34spawn1.region = 3;
    [wave34spawn addObject:wave34spawn1];
    wave34.spawn = wave34spawn;
    [waves addObject:wave34];
    
    THMissionWaveInfo* wave35 = [[THMissionWaveInfo alloc] init];
    wave35.waveTime = 31;
    NSMutableArray* wave35spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave35spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave35spawn1.monsterClass = [MDSpeedyMonster class];
    wave35spawn1.minCount = 1;
    wave35spawn1.maxCount = 1;
    wave35spawn1.region = 4;
    [wave35spawn addObject:wave35spawn1];
    wave35.spawn = wave35spawn;
    [waves addObject:wave35];
    
    THMissionWaveInfo* wave36 = [[THMissionWaveInfo alloc] init];
    wave36.waveTime = 31;
    NSMutableArray* wave36spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave36spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave36spawn1.monsterClass = [MDSpeedyMonster class];
    wave36spawn1.minCount = 1;
    wave36spawn1.maxCount = 1;
    wave36spawn1.region = 2;
    [wave36spawn addObject:wave36spawn1];
    wave36.spawn = wave36spawn;
    [waves addObject:wave36];
    
    THMissionWaveInfo* wave37 = [[THMissionWaveInfo alloc] init];
    wave37.waveTime = 31;
    NSMutableArray* wave37spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave37spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave37spawn1.monsterClass = [MDSpeedyMonster class];
    wave37spawn1.minCount = 1;
    wave37spawn1.maxCount = 1;
    wave37spawn1.region = 1;
    [wave37spawn addObject:wave37spawn1];
    wave37.spawn = wave37spawn;
    [waves addObject:wave37];
    
    THMissionWaveInfo* wave38 = [[THMissionWaveInfo alloc] init];
    wave38.waveTime = 31;
    NSMutableArray* wave38spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave38spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave38spawn1.monsterClass = [MDSpeedyMonster class];
    wave38spawn1.minCount = 1;
    wave38spawn1.maxCount = 1;
    wave38spawn1.region = 0;
    [wave38spawn addObject:wave38spawn1];
    wave38.spawn = wave38spawn;
    [waves addObject:wave38];
    
    THMissionWaveInfo* wave40 = [[THMissionWaveInfo alloc] init];
    wave40.waveTime = 36;
    NSMutableArray* wave40spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave40spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave40spawn1.monsterClass = [MDSpeedyMonster class];
    wave40spawn1.minCount = 1;
    wave40spawn1.maxCount = 1;
    wave40spawn1.region = 3;
    [wave40spawn addObject:wave40spawn1];
    wave40.spawn = wave40spawn;
    [waves addObject:wave40];
    
    THMissionWaveInfo* wave41 = [[THMissionWaveInfo alloc] init];
    wave41.waveTime = 36;
    NSMutableArray* wave41spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave41spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave41spawn1.monsterClass = [MDSpeedyMonster class];
    wave41spawn1.minCount = 1;
    wave41spawn1.maxCount = 1;
    wave41spawn1.region = 2;
    [wave41spawn addObject:wave41spawn1];
    wave41.spawn = wave41spawn;
    [waves addObject:wave41];
    
    THMissionWaveInfo* wave42 = [[THMissionWaveInfo alloc] init];
    wave42.waveTime = 37;
    NSMutableArray* wave42spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave42spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave42spawn1.monsterClass = [MDSpeedyMonster class];
    wave42spawn1.minCount = 1;
    wave42spawn1.maxCount = 1;
    wave42spawn1.region = 3;
    [wave42spawn addObject:wave42spawn1];
    wave42.spawn = wave42spawn;
    [waves addObject:wave42];
    
    THMissionWaveInfo* wave43 = [[THMissionWaveInfo alloc] init];
    wave43.waveTime = 37;
    NSMutableArray* wave43spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave43spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave43spawn1.monsterClass = [MDSpeedyMonster class];
    wave43spawn1.minCount = 1;
    wave43spawn1.maxCount = 1;
    wave43spawn1.region = 2;
    [wave43spawn addObject:wave43spawn1];
    wave43.spawn = wave43spawn;
    [waves addObject:wave43];
    
    THMissionWaveInfo* wave44 = [[THMissionWaveInfo alloc] init];
    wave44.waveTime = 37;
    NSMutableArray* wave44spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave44spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave44spawn1.monsterClass = [MDSpeedyMonster class];
    wave44spawn1.minCount = 1;
    wave44spawn1.maxCount = 1;
    wave44spawn1.region = 4;
    [wave44spawn addObject:wave44spawn1];
    wave44.spawn = wave44spawn;
    [waves addObject:wave44];
    
    THMissionWaveInfo* wave45 = [[THMissionWaveInfo alloc] init];
    wave45.waveTime = 37;
    NSMutableArray* wave45spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave45spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave45spawn1.monsterClass = [MDSpeedyMonster class];
    wave45spawn1.minCount = 1;
    wave45spawn1.maxCount = 1;
    wave45spawn1.region = 1;
    [wave45spawn addObject:wave45spawn1];
    wave45.spawn = wave45spawn;
    [waves addObject:wave45];
    
    THMissionWaveInfo* wave46 = [[THMissionWaveInfo alloc] init];
    wave46.waveTime = 39;
    NSMutableArray* wave46spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave46spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave46spawn1.monsterClass = [MDNormalMonster class];
    wave46spawn1.minCount = 1;
    wave46spawn1.maxCount = 1;
    wave46spawn1.region = 5;
    [wave46spawn addObject:wave46spawn1];
    wave46.spawn = wave46spawn;
    [waves addObject:wave46];
    
    THMissionWaveInfo* wave47 = [[THMissionWaveInfo alloc] init];
    wave47.waveTime = 39;
    NSMutableArray* wave47spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave47spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave47spawn1.monsterClass = [MDNormalMonster class];
    wave47spawn1.minCount = 1;
    wave47spawn1.maxCount = 1;
    wave47spawn1.region = 4;
    [wave47spawn addObject:wave47spawn1];
    wave47.spawn = wave47spawn;
    [waves addObject:wave47];
    
    THMissionWaveInfo* wave48 = [[THMissionWaveInfo alloc] init];
    wave48.waveTime = 40;
    NSMutableArray* wave48spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave48spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave48spawn1.monsterClass = [MDNormalMonster class];
    wave48spawn1.minCount = 1;
    wave48spawn1.maxCount = 1;
    wave48spawn1.region = 1;
    [wave48spawn addObject:wave48spawn1];
    wave48.spawn = wave48spawn;
    [waves addObject:wave48];
    
    THMissionWaveInfo* wave49 = [[THMissionWaveInfo alloc] init];
    wave49.waveTime = 40;
    NSMutableArray* wave49spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave49spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave49spawn1.monsterClass = [MDNormalMonster class];
    wave49spawn1.minCount = 1;
    wave49spawn1.maxCount = 1;
    wave49spawn1.region = 0;
    [wave49spawn addObject:wave49spawn1];
    wave49.spawn = wave49spawn;
    [waves addObject:wave49];
    
    THMissionWaveInfo* wave51 = [[THMissionWaveInfo alloc] init];
    wave51.waveTime = 48;
    NSMutableArray* wave51spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave51spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave51spawn1.monsterClass = [MDSpeedyMonster class];
    wave51spawn1.minCount = 1;
    wave51spawn1.maxCount = 1;
    wave51spawn1.region = 4;
    [wave51spawn addObject:wave51spawn1];
    wave51.spawn = wave51spawn;
    [waves addObject:wave51];
    
    THMissionWaveInfo* wave52 = [[THMissionWaveInfo alloc] init];
    wave52.waveTime = 48;
    NSMutableArray* wave52spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave52spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave52spawn1.monsterClass = [MDSpeedyMonster class];
    wave52spawn1.minCount = 1;
    wave52spawn1.maxCount = 1;
    wave52spawn1.region = 1;
    [wave52spawn addObject:wave52spawn1];
    wave52.spawn = wave52spawn;
    [waves addObject:wave52];
    
    THMissionWaveInfo* wave53 = [[THMissionWaveInfo alloc] init];
    wave53.waveTime = 49;
    NSMutableArray* wave53spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave53spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave53spawn1.monsterClass = [MDSpeedyMonster class];
    wave53spawn1.minCount = 1;
    wave53spawn1.maxCount = 1;
    wave53spawn1.region = 5;
    [wave53spawn addObject:wave53spawn1];
    wave53.spawn = wave53spawn;
    [waves addObject:wave53];
    
    THMissionWaveInfo* wave54 = [[THMissionWaveInfo alloc] init];
    wave54.waveTime = 49;
    NSMutableArray* wave54spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave54spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave54spawn1.monsterClass = [MDSpeedyMonster class];
    wave54spawn1.minCount = 1;
    wave54spawn1.maxCount = 1;
    wave54spawn1.region = 3;
    [wave54spawn addObject:wave54spawn1];
    wave54.spawn = wave54spawn;
    [waves addObject:wave54];
    
    THMissionWaveInfo* wave55 = [[THMissionWaveInfo alloc] init];
    wave55.waveTime = 49;
    NSMutableArray* wave55spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave55spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave55spawn1.monsterClass = [MDSpeedyMonster class];
    wave55spawn1.minCount = 1;
    wave55spawn1.maxCount = 1;
    wave55spawn1.region = 2;
    [wave55spawn addObject:wave55spawn1];
    wave55.spawn = wave55spawn;
    [waves addObject:wave55];
    
    THMissionWaveInfo* wave56 = [[THMissionWaveInfo alloc] init];
    wave56.waveTime = 49;
    NSMutableArray* wave56spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave56spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave56spawn1.monsterClass = [MDSpeedyMonster class];
    wave56spawn1.minCount = 1;
    wave56spawn1.maxCount = 1;
    wave56spawn1.region = 0;
    [wave56spawn addObject:wave56spawn1];
    wave56.spawn = wave56spawn;
    [waves addObject:wave56];
    
    THMissionWaveInfo* wave57 = [[THMissionWaveInfo alloc] init];
    wave57.waveTime = 49;
    NSMutableArray* wave57spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave57spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave57spawn1.monsterClass = [MDNormalMonster class];
    wave57spawn1.minCount = 1;
    wave57spawn1.maxCount = 1;
    wave57spawn1.region = 4;
    [wave57spawn addObject:wave57spawn1];
    wave57.spawn = wave57spawn;
    [waves addObject:wave57];
    
    THMissionWaveInfo* wave58 = [[THMissionWaveInfo alloc] init];
    wave58.waveTime = 49;
    NSMutableArray* wave58spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave58spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave58spawn1.monsterClass = [MDNormalMonster class];
    wave58spawn1.minCount = 1;
    wave58spawn1.maxCount = 1;
    wave58spawn1.region = 1;
    [wave58spawn addObject:wave58spawn1];
    wave58.spawn = wave58spawn;
    [waves addObject:wave58];
    
    THMissionWaveInfo* wave59 = [[THMissionWaveInfo alloc] init];
    wave59.waveTime = 52;
    NSMutableArray* wave59spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave59spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave59spawn1.monsterClass = [MDNormalMonster class];
    wave59spawn1.minCount = 1;
    wave59spawn1.maxCount = 1;
    wave59spawn1.region = 3;
    [wave59spawn addObject:wave59spawn1];
    wave59.spawn = wave59spawn;
    [waves addObject:wave59];
    
    THMissionWaveInfo* wave60 = [[THMissionWaveInfo alloc] init];
    wave60.waveTime = 52;
    NSMutableArray* wave60spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave60spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave60spawn1.monsterClass = [MDNormalMonster class];
    wave60spawn1.minCount = 1;
    wave60spawn1.maxCount = 1;
    wave60spawn1.region = 2;
    [wave60spawn addObject:wave60spawn1];
    wave60.spawn = wave60spawn;
    [waves addObject:wave60];
    
    THMissionWaveInfo* wave62 = [[THMissionWaveInfo alloc] init];
    wave62.waveTime = 60;
    NSMutableArray* wave62spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave62spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave62spawn1.monsterClass = [MDSpeedyMonster class];
    wave62spawn1.minCount = 1;
    wave62spawn1.maxCount = 1;
    wave62spawn1.region = 3;
    [wave62spawn addObject:wave62spawn1];
    wave62.spawn = wave62spawn;
    [waves addObject:wave62];
    
    THMissionWaveInfo* wave63 = [[THMissionWaveInfo alloc] init];
    wave63.waveTime = 60;
    NSMutableArray* wave63spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave63spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave63spawn1.monsterClass = [MDSpeedyMonster class];
    wave63spawn1.minCount = 1;
    wave63spawn1.maxCount = 1;
    wave63spawn1.region = 2;
    [wave63spawn addObject:wave63spawn1];
    wave63.spawn = wave63spawn;
    [waves addObject:wave63];
    
    THMissionWaveInfo* wave64 = [[THMissionWaveInfo alloc] init];
    wave64.waveTime = 61;
    NSMutableArray* wave64spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave64spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave64spawn1.monsterClass = [MDSpeedyMonster class];
    wave64spawn1.minCount = 1;
    wave64spawn1.maxCount = 1;
    wave64spawn1.region = 3;
    [wave64spawn addObject:wave64spawn1];
    wave64.spawn = wave64spawn;
    [waves addObject:wave64];
    
    THMissionWaveInfo* wave65 = [[THMissionWaveInfo alloc] init];
    wave65.waveTime = 61;
    NSMutableArray* wave65spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave65spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave65spawn1.monsterClass = [MDSpeedyMonster class];
    wave65spawn1.minCount = 1;
    wave65spawn1.maxCount = 1;
    wave65spawn1.region = 2;
    [wave65spawn addObject:wave65spawn1];
    wave65.spawn = wave65spawn;
    [waves addObject:wave65];
    
    THMissionWaveInfo* wave66 = [[THMissionWaveInfo alloc] init];
    wave66.waveTime = 64;
    NSMutableArray* wave66spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave66spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave66spawn1.monsterClass = [MDNormalMonster class];
    wave66spawn1.minCount = 1;
    wave66spawn1.maxCount = 1;
    wave66spawn1.region = 3;
    [wave66spawn addObject:wave66spawn1];
    wave66.spawn = wave66spawn;
    [waves addObject:wave66];
    
    THMissionWaveInfo* wave67 = [[THMissionWaveInfo alloc] init];
    wave67.waveTime = 64;
    NSMutableArray* wave67spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave67spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave67spawn1.monsterClass = [MDNormalMonster class];
    wave67spawn1.minCount = 1;
    wave67spawn1.maxCount = 1;
    wave67spawn1.region = 2;
    [wave67spawn addObject:wave67spawn1];
    wave67.spawn = wave67spawn;
    [waves addObject:wave67];
    
    THMissionWaveInfo* wave68 = [[THMissionWaveInfo alloc] init];
    wave68.waveTime = 65;
    NSMutableArray* wave68spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave68spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave68spawn1.monsterClass = [MDNormalMonster class];
    wave68spawn1.minCount = 1;
    wave68spawn1.maxCount = 1;
    wave68spawn1.region = 3;
    [wave68spawn addObject:wave68spawn1];
    wave68.spawn = wave68spawn;
    [waves addObject:wave68];
    
    THMissionWaveInfo* wave69 = [[THMissionWaveInfo alloc] init];
    wave69.waveTime = 65;
    NSMutableArray* wave69spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave69spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave69spawn1.monsterClass = [MDNormalMonster class];
    wave69spawn1.minCount = 1;
    wave69spawn1.maxCount = 1;
    wave69spawn1.region = 2;
    [wave69spawn addObject:wave69spawn1];
    wave69.spawn = wave69spawn;
    [waves addObject:wave69];
    
    THMissionWaveInfo* wave70 = [[THMissionWaveInfo alloc] init];
    wave70.waveTime = 64;
    NSMutableArray* wave70spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave70spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave70spawn1.monsterClass = [MDSpeedyMonster class];
    wave70spawn1.minCount = 1;
    wave70spawn1.maxCount = 1;
    wave70spawn1.region = 5;
    [wave70spawn addObject:wave70spawn1];
    wave70.spawn = wave70spawn;
    [waves addObject:wave70];
    
    THMissionWaveInfo* wave71 = [[THMissionWaveInfo alloc] init];
    wave71.waveTime = 64;
    NSMutableArray* wave71spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave71spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave71spawn1.monsterClass = [MDSpeedyMonster class];
    wave71spawn1.minCount = 1;
    wave71spawn1.maxCount = 1;
    wave71spawn1.region = 4;
    [wave71spawn addObject:wave71spawn1];
    wave71.spawn = wave71spawn;
    [waves addObject:wave71];
    
    THMissionWaveInfo* wave72 = [[THMissionWaveInfo alloc] init];
    wave72.waveTime = 64;
    NSMutableArray* wave72spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave72spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave72spawn1.monsterClass = [MDSpeedyMonster class];
    wave72spawn1.minCount = 1;
    wave72spawn1.maxCount = 1;
    wave72spawn1.region = 1;
    [wave72spawn addObject:wave72spawn1];
    wave72.spawn = wave72spawn;
    [waves addObject:wave72];
    
    THMissionWaveInfo* wave73 = [[THMissionWaveInfo alloc] init];
    wave73.waveTime = 64;
    NSMutableArray* wave73spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave73spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave73spawn1.monsterClass = [MDSpeedyMonster class];
    wave73spawn1.minCount = 1;
    wave73spawn1.maxCount = 1;
    wave73spawn1.region = 0;
    [wave73spawn addObject:wave73spawn1];
    wave73.spawn = wave73spawn;
    [waves addObject:wave73];
    
    THMissionWaveInfo* wave74 = [[THMissionWaveInfo alloc] init];
    wave74.waveTime = 65;
    NSMutableArray* wave74spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave74spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave74spawn1.monsterClass = [MDSpeedyMonster class];
    wave74spawn1.minCount = 1;
    wave74spawn1.maxCount = 1;
    wave74spawn1.region = 5;
    [wave74spawn addObject:wave74spawn1];
    wave74.spawn = wave74spawn;
    [waves addObject:wave74];
    
    THMissionWaveInfo* wave75 = [[THMissionWaveInfo alloc] init];
    wave75.waveTime = 65;
    NSMutableArray* wave75spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave75spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave75spawn1.monsterClass = [MDSpeedyMonster class];
    wave75spawn1.minCount = 1;
    wave75spawn1.maxCount = 1;
    wave75spawn1.region = 4;
    [wave75spawn addObject:wave75spawn1];
    wave75.spawn = wave75spawn;
    [waves addObject:wave75];
    
    THMissionWaveInfo* wave76 = [[THMissionWaveInfo alloc] init];
    wave76.waveTime = 65;
    NSMutableArray* wave76spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave76spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave76spawn1.monsterClass = [MDSpeedyMonster class];
    wave76spawn1.minCount = 1;
    wave76spawn1.maxCount = 1;
    wave76spawn1.region = 1;
    [wave76spawn addObject:wave76spawn1];
    wave76.spawn = wave76spawn;
    [waves addObject:wave76];
    
    THMissionWaveInfo* wave77 = [[THMissionWaveInfo alloc] init];
    wave77.waveTime = 65;
    NSMutableArray* wave77spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave77spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave77spawn1.monsterClass = [MDSpeedyMonster class];
    wave77spawn1.minCount = 1;
    wave77spawn1.maxCount = 1;
    wave77spawn1.region = 0;
    [wave77spawn addObject:wave77spawn1];
    wave77.spawn = wave77spawn;
    [waves addObject:wave77];
    
    return mission;
}

- (THMissionInfo*)createLevel2 {
    THMissionInfo* mission = [[THMissionInfo alloc] init];
    NSMutableArray* waves = [NSMutableArray array];
    mission.waves = waves;
    NSMutableArray* cuePointWaves = [NSMutableArray array];
    mission.cuePointWaves = cuePointWaves;
    
    
    
    THMissionWaveInfo* wave1 = [[THMissionWaveInfo alloc] init];
    wave1.waveTime = 1;
    NSMutableArray* wave1spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave1spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave1spawn1.monsterClass = [MDNormalMonster class];
    wave1spawn1.minCount = 1;
    wave1spawn1.maxCount = 1;
    wave1spawn1.region = 4;
    [wave1spawn addObject:wave1spawn1];
    wave1.spawn = wave1spawn;
    [waves addObject:wave1];
    
    THMissionWaveInfo* wave2 = [[THMissionWaveInfo alloc] init];
    wave2.waveTime = 1;
    NSMutableArray* wave2spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave2spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave2spawn1.monsterClass = [MDNormalMonster class];
    wave2spawn1.minCount = 1;
    wave2spawn1.maxCount = 1;
    wave2spawn1.region = 1;
    [wave2spawn addObject:wave2spawn1];
    wave2.spawn = wave2spawn;
    [waves addObject:wave2];
    
    THMissionWaveInfo* wave3 = [[THMissionWaveInfo alloc] init];
    wave3.waveTime = 1;
    NSMutableArray* wave3spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave3spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave3spawn1.monsterClass = [MDSpeedyMonster class];
    wave3spawn1.minCount = 1;
    wave3spawn1.maxCount = 1;
    wave3spawn1.region = 3;
    [wave3spawn addObject:wave3spawn1];
    wave3.spawn = wave3spawn;
    [waves addObject:wave3];
    
    THMissionWaveInfo* wave4 = [[THMissionWaveInfo alloc] init];
    wave4.waveTime = 1;
    NSMutableArray* wave4spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave4spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave4spawn1.monsterClass = [MDSpeedyMonster class];
    wave4spawn1.minCount = 1;
    wave4spawn1.maxCount = 1;
    wave4spawn1.region = 2;
    [wave4spawn addObject:wave4spawn1];
    wave4.spawn = wave4spawn;
    [waves addObject:wave4];
    
    THMissionWaveInfo* wave5 = [[THMissionWaveInfo alloc] init];
    wave5.waveTime = 2;
    NSMutableArray* wave5spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave5spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave5spawn1.monsterClass = [MDSpeedyMonster class];
    wave5spawn1.minCount = 1;
    wave5spawn1.maxCount = 1;
    wave5spawn1.region = 3;
    [wave5spawn addObject:wave5spawn1];
    wave5.spawn = wave5spawn;
    [waves addObject:wave5];
    
    THMissionWaveInfo* wave6 = [[THMissionWaveInfo alloc] init];
    wave6.waveTime = 2;
    NSMutableArray* wave6spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave6spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave6spawn1.monsterClass = [MDSpeedyMonster class];
    wave6spawn1.minCount = 1;
    wave6spawn1.maxCount = 1;
    wave6spawn1.region = 2;
    [wave6spawn addObject:wave6spawn1];
    wave6.spawn = wave6spawn;
    [waves addObject:wave6];
    
    THMissionWaveInfo* wave8 = [[THMissionWaveInfo alloc] init];
    wave8.waveTime = 6;
    NSMutableArray* wave8spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave8spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave8spawn1.monsterClass = [MDFireMonster class];
    wave8spawn1.minCount = 1;
    wave8spawn1.maxCount = 1;
    wave8spawn1.region = 3;
    [wave8spawn addObject:wave8spawn1];
    wave8.spawn = wave8spawn;
    [waves addObject:wave8];
    
    THMissionWaveInfo* wave9 = [[THMissionWaveInfo alloc] init];
    wave9.waveTime = 6;
    NSMutableArray* wave9spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave9spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave9spawn1.monsterClass = [MDFireMonster class];
    wave9spawn1.minCount = 1;
    wave9spawn1.maxCount = 1;
    wave9spawn1.region = 2;
    [wave9spawn addObject:wave9spawn1];
    wave9.spawn = wave9spawn;
    [waves addObject:wave9];
    
    THMissionWaveInfo* wave11 = [[THMissionWaveInfo alloc] init];
    wave11.waveTime = 10;
    NSMutableArray* wave11spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave11spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave11spawn1.monsterClass = [MDFireMonster class];
    wave11spawn1.minCount = 1;
    wave11spawn1.maxCount = 1;
    wave11spawn1.region = 4;
    [wave11spawn addObject:wave11spawn1];
    wave11.spawn = wave11spawn;
    [waves addObject:wave11];
    
    THMissionWaveInfo* wave12 = [[THMissionWaveInfo alloc] init];
    wave12.waveTime = 10;
    NSMutableArray* wave12spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave12spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave12spawn1.monsterClass = [MDFireMonster class];
    wave12spawn1.minCount = 1;
    wave12spawn1.maxCount = 1;
    wave12spawn1.region = 1;
    [wave12spawn addObject:wave12spawn1];
    wave12.spawn = wave12spawn;
    [waves addObject:wave12];
    
    THMissionWaveInfo* wave13 = [[THMissionWaveInfo alloc] init];
    wave13.waveTime = 11;
    NSMutableArray* wave13spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave13spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave13spawn1.monsterClass = [MDNormalMonster class];
    wave13spawn1.minCount = 1;
    wave13spawn1.maxCount = 1;
    wave13spawn1.region = 5;
    [wave13spawn addObject:wave13spawn1];
    wave13.spawn = wave13spawn;
    [waves addObject:wave13];
    
    THMissionWaveInfo* wave14 = [[THMissionWaveInfo alloc] init];
    wave14.waveTime = 11;
    NSMutableArray* wave14spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave14spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave14spawn1.monsterClass = [MDNormalMonster class];
    wave14spawn1.minCount = 1;
    wave14spawn1.maxCount = 1;
    wave14spawn1.region = 3;
    [wave14spawn addObject:wave14spawn1];
    wave14.spawn = wave14spawn;
    [waves addObject:wave14];
    
    THMissionWaveInfo* wave15 = [[THMissionWaveInfo alloc] init];
    wave15.waveTime = 11;
    NSMutableArray* wave15spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave15spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave15spawn1.monsterClass = [MDNormalMonster class];
    wave15spawn1.minCount = 1;
    wave15spawn1.maxCount = 1;
    wave15spawn1.region = 2;
    [wave15spawn addObject:wave15spawn1];
    wave15.spawn = wave15spawn;
    [waves addObject:wave15];
    
    THMissionWaveInfo* wave16 = [[THMissionWaveInfo alloc] init];
    wave16.waveTime = 11;
    NSMutableArray* wave16spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave16spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave16spawn1.monsterClass = [MDNormalMonster class];
    wave16spawn1.minCount = 1;
    wave16spawn1.maxCount = 1;
    wave16spawn1.region = 0;
    [wave16spawn addObject:wave16spawn1];
    wave16.spawn = wave16spawn;
    [waves addObject:wave16];
    
    THMissionWaveInfo* wave18 = [[THMissionWaveInfo alloc] init];
    wave18.waveTime = 18;
    NSMutableArray* wave18spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave18spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave18spawn1.monsterClass = [MDFireMonster class];
    wave18spawn1.minCount = 1;
    wave18spawn1.maxCount = 1;
    wave18spawn1.region = 5;
    [wave18spawn addObject:wave18spawn1];
    wave18.spawn = wave18spawn;
    [waves addObject:wave18];
    
    THMissionWaveInfo* wave19 = [[THMissionWaveInfo alloc] init];
    wave19.waveTime = 18;
    NSMutableArray* wave19spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave19spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave19spawn1.monsterClass = [MDFireMonster class];
    wave19spawn1.minCount = 1;
    wave19spawn1.maxCount = 1;
    wave19spawn1.region = 3;
    [wave19spawn addObject:wave19spawn1];
    wave19.spawn = wave19spawn;
    [waves addObject:wave19];
    
    THMissionWaveInfo* wave20 = [[THMissionWaveInfo alloc] init];
    wave20.waveTime = 18;
    NSMutableArray* wave20spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave20spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave20spawn1.monsterClass = [MDFireMonster class];
    wave20spawn1.minCount = 1;
    wave20spawn1.maxCount = 1;
    wave20spawn1.region = 1;
    [wave20spawn addObject:wave20spawn1];
    wave20.spawn = wave20spawn;
    [waves addObject:wave20];
    
    THMissionWaveInfo* wave22 = [[THMissionWaveInfo alloc] init];
    wave22.waveTime = 22;
    NSMutableArray* wave22spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave22spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave22spawn1.monsterClass = [MDFireMonster class];
    wave22spawn1.minCount = 1;
    wave22spawn1.maxCount = 1;
    wave22spawn1.region = 4;
    [wave22spawn addObject:wave22spawn1];
    wave22.spawn = wave22spawn;
    [waves addObject:wave22];
    
    THMissionWaveInfo* wave23 = [[THMissionWaveInfo alloc] init];
    wave23.waveTime = 22;
    NSMutableArray* wave23spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave23spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave23spawn1.monsterClass = [MDFireMonster class];
    wave23spawn1.minCount = 1;
    wave23spawn1.maxCount = 1;
    wave23spawn1.region = 2;
    [wave23spawn addObject:wave23spawn1];
    wave23.spawn = wave23spawn;
    [waves addObject:wave23];
    
    THMissionWaveInfo* wave24 = [[THMissionWaveInfo alloc] init];
    wave24.waveTime = 22;
    NSMutableArray* wave24spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave24spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave24spawn1.monsterClass = [MDFireMonster class];
    wave24spawn1.minCount = 1;
    wave24spawn1.maxCount = 1;
    wave24spawn1.region = 0;
    [wave24spawn addObject:wave24spawn1];
    wave24.spawn = wave24spawn;
    [waves addObject:wave24];
    
    
    THCuePointInfo *point2 = [[THCuePointInfo alloc] init];
    point2.eventTime = 27;
    point2.cueName = @"cuepoint-2.png";
    point2.skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init], [[SDLaserAttack alloc] init]];
    [cuePointWaves addObject:point2];
    
    
    THMissionWaveInfo* wave26 = [[THMissionWaveInfo alloc] init];
    wave26.waveTime = 28;
    NSMutableArray* wave26spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave26spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave26spawn1.monsterClass = [MDHelmetMonster class];
    wave26spawn1.minCount = 1;
    wave26spawn1.maxCount = 1;
    wave26spawn1.region = 4;
    [wave26spawn addObject:wave26spawn1];
    wave26.spawn = wave26spawn;
    [waves addObject:wave26];
    
    THMissionWaveInfo* wave27 = [[THMissionWaveInfo alloc] init];
    wave27.waveTime = 28;
    NSMutableArray* wave27spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave27spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave27spawn1.monsterClass = [MDHelmetMonster class];
    wave27spawn1.minCount = 1;
    wave27spawn1.maxCount = 1;
    wave27spawn1.region = 1;
    [wave27spawn addObject:wave27spawn1];
    wave27.spawn = wave27spawn;
    [waves addObject:wave27];
    
    THMissionWaveInfo* wave29 = [[THMissionWaveInfo alloc] init];
    wave29.waveTime = 32;
    NSMutableArray* wave29spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave29spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave29spawn1.monsterClass = [MDHelmetMonster class];
    wave29spawn1.minCount = 1;
    wave29spawn1.maxCount = 1;
    wave29spawn1.region = 4;
    [wave29spawn addObject:wave29spawn1];
    wave29.spawn = wave29spawn;
    [waves addObject:wave29];
    
    THMissionWaveInfo* wave30 = [[THMissionWaveInfo alloc] init];
    wave30.waveTime = 32;
    NSMutableArray* wave30spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave30spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave30spawn1.monsterClass = [MDHelmetMonster class];
    wave30spawn1.minCount = 1;
    wave30spawn1.maxCount = 1;
    wave30spawn1.region = 3;
    [wave30spawn addObject:wave30spawn1];
    wave30.spawn = wave30spawn;
    [waves addObject:wave30];
    
    THMissionWaveInfo* wave31 = [[THMissionWaveInfo alloc] init];
    wave31.waveTime = 32;
    NSMutableArray* wave31spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave31spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave31spawn1.monsterClass = [MDHelmetMonster class];
    wave31spawn1.minCount = 1;
    wave31spawn1.maxCount = 1;
    wave31spawn1.region = 2;
    [wave31spawn addObject:wave31spawn1];
    wave31.spawn = wave31spawn;
    [waves addObject:wave31];
    
    THMissionWaveInfo* wave32 = [[THMissionWaveInfo alloc] init];
    wave32.waveTime = 32;
    NSMutableArray* wave32spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave32spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave32spawn1.monsterClass = [MDHelmetMonster class];
    wave32spawn1.minCount = 1;
    wave32spawn1.maxCount = 1;
    wave32spawn1.region = 1;
    [wave32spawn addObject:wave32spawn1];
    wave32.spawn = wave32spawn;
    [waves addObject:wave32];
    
    THMissionWaveInfo* wave34 = [[THMissionWaveInfo alloc] init];
    wave34.waveTime = 40;
    NSMutableArray* wave34spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave34spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave34spawn1.monsterClass = [MDSpeedyMonster class];
    wave34spawn1.minCount = 1;
    wave34spawn1.maxCount = 1;
    wave34spawn1.region = 4;
    [wave34spawn addObject:wave34spawn1];
    wave34.spawn = wave34spawn;
    [waves addObject:wave34];
    
    THMissionWaveInfo* wave35 = [[THMissionWaveInfo alloc] init];
    wave35.waveTime = 40;
    NSMutableArray* wave35spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave35spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave35spawn1.monsterClass = [MDSpeedyMonster class];
    wave35spawn1.minCount = 1;
    wave35spawn1.maxCount = 1;
    wave35spawn1.region = 1;
    [wave35spawn addObject:wave35spawn1];
    wave35.spawn = wave35spawn;
    [waves addObject:wave35];
    
    THMissionWaveInfo* wave36 = [[THMissionWaveInfo alloc] init];
    wave36.waveTime = 41;
    NSMutableArray* wave36spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave36spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave36spawn1.monsterClass = [MDHelmetMonster class];
    wave36spawn1.minCount = 1;
    wave36spawn1.maxCount = 1;
    wave36spawn1.region = 4;
    [wave36spawn addObject:wave36spawn1];
    wave36.spawn = wave36spawn;
    [waves addObject:wave36];
    
    THMissionWaveInfo* wave37 = [[THMissionWaveInfo alloc] init];
    wave37.waveTime = 41;
    NSMutableArray* wave37spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave37spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave37spawn1.monsterClass = [MDHelmetMonster class];
    wave37spawn1.minCount = 1;
    wave37spawn1.maxCount = 1;
    wave37spawn1.region = 1;
    [wave37spawn addObject:wave37spawn1];
    wave37.spawn = wave37spawn;
    [waves addObject:wave37];
    
    THMissionWaveInfo* wave38 = [[THMissionWaveInfo alloc] init];
    wave38.waveTime = 41;
    NSMutableArray* wave38spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave38spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave38spawn1.monsterClass = [MDSpeedyMonster class];
    wave38spawn1.minCount = 1;
    wave38spawn1.maxCount = 1;
    wave38spawn1.region = 5;
    [wave38spawn addObject:wave38spawn1];
    wave38.spawn = wave38spawn;
    [waves addObject:wave38];
    
    THMissionWaveInfo* wave39 = [[THMissionWaveInfo alloc] init];
    wave39.waveTime = 41;
    NSMutableArray* wave39spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave39spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave39spawn1.monsterClass = [MDSpeedyMonster class];
    wave39spawn1.minCount = 1;
    wave39spawn1.maxCount = 1;
    wave39spawn1.region = 3;
    [wave39spawn addObject:wave39spawn1];
    wave39.spawn = wave39spawn;
    [waves addObject:wave39];
    
    THMissionWaveInfo* wave40 = [[THMissionWaveInfo alloc] init];
    wave40.waveTime = 41;
    NSMutableArray* wave40spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave40spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave40spawn1.monsterClass = [MDSpeedyMonster class];
    wave40spawn1.minCount = 1;
    wave40spawn1.maxCount = 1;
    wave40spawn1.region = 2;
    [wave40spawn addObject:wave40spawn1];
    wave40.spawn = wave40spawn;
    [waves addObject:wave40];
    
    THMissionWaveInfo* wave41 = [[THMissionWaveInfo alloc] init];
    wave41.waveTime = 41;
    NSMutableArray* wave41spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave41spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave41spawn1.monsterClass = [MDSpeedyMonster class];
    wave41spawn1.minCount = 1;
    wave41spawn1.maxCount = 1;
    wave41spawn1.region = 0;
    [wave41spawn addObject:wave41spawn1];
    wave41.spawn = wave41spawn;
    [waves addObject:wave41];
    
    THMissionWaveInfo* wave43 = [[THMissionWaveInfo alloc] init];
    wave43.waveTime = 48;
    NSMutableArray* wave43spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave43spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave43spawn1.monsterClass = [MDHelmetMonster class];
    wave43spawn1.minCount = 1;
    wave43spawn1.maxCount = 1;
    wave43spawn1.region = 5;
    [wave43spawn addObject:wave43spawn1];
    wave43.spawn = wave43spawn;
    [waves addObject:wave43];
    
    THMissionWaveInfo* wave44 = [[THMissionWaveInfo alloc] init];
    wave44.waveTime = 48;
    NSMutableArray* wave44spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave44spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave44spawn1.monsterClass = [MDHelmetMonster class];
    wave44spawn1.minCount = 1;
    wave44spawn1.maxCount = 1;
    wave44spawn1.region = 3;
    [wave44spawn addObject:wave44spawn1];
    wave44.spawn = wave44spawn;
    [waves addObject:wave44];
    
    THMissionWaveInfo* wave45 = [[THMissionWaveInfo alloc] init];
    wave45.waveTime = 49;
    NSMutableArray* wave45spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave45spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave45spawn1.monsterClass = [MDFireMonster class];
    wave45spawn1.minCount = 1;
    wave45spawn1.maxCount = 1;
    wave45spawn1.region = 4;
    [wave45spawn addObject:wave45spawn1];
    wave45.spawn = wave45spawn;
    [waves addObject:wave45];
    
    THMissionWaveInfo* wave46 = [[THMissionWaveInfo alloc] init];
    wave46.waveTime = 50;
    NSMutableArray* wave46spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave46spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave46spawn1.monsterClass = [MDHelmetMonster class];
    wave46spawn1.minCount = 1;
    wave46spawn1.maxCount = 1;
    wave46spawn1.region = 2;
    [wave46spawn addObject:wave46spawn1];
    wave46.spawn = wave46spawn;
    [waves addObject:wave46];
    
    THMissionWaveInfo* wave47 = [[THMissionWaveInfo alloc] init];
    wave47.waveTime = 50;
    NSMutableArray* wave47spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave47spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave47spawn1.monsterClass = [MDHelmetMonster class];
    wave47spawn1.minCount = 1;
    wave47spawn1.maxCount = 1;
    wave47spawn1.region = 0;
    [wave47spawn addObject:wave47spawn1];
    wave47.spawn = wave47spawn;
    [waves addObject:wave47];
    
    THMissionWaveInfo* wave48 = [[THMissionWaveInfo alloc] init];
    wave48.waveTime = 51;
    NSMutableArray* wave48spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave48spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave48spawn1.monsterClass = [MDFireMonster class];
    wave48spawn1.minCount = 1;
    wave48spawn1.maxCount = 1;
    wave48spawn1.region = 1;
    [wave48spawn addObject:wave48spawn1];
    wave48.spawn = wave48spawn;
    [waves addObject:wave48];
    
    THMissionWaveInfo* wave50 = [[THMissionWaveInfo alloc] init];
    wave50.waveTime = 60;
    NSMutableArray* wave50spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave50spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave50spawn1.monsterClass = [MDHelmetMonster class];
    wave50spawn1.minCount = 1;
    wave50spawn1.maxCount = 1;
    wave50spawn1.region = 4;
    [wave50spawn addObject:wave50spawn1];
    wave50.spawn = wave50spawn;
    [waves addObject:wave50];
    
    THMissionWaveInfo* wave51 = [[THMissionWaveInfo alloc] init];
    wave51.waveTime = 60;
    NSMutableArray* wave51spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave51spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave51spawn1.monsterClass = [MDHelmetMonster class];
    wave51spawn1.minCount = 1;
    wave51spawn1.maxCount = 1;
    wave51spawn1.region = 1;
    [wave51spawn addObject:wave51spawn1];
    wave51.spawn = wave51spawn;
    [waves addObject:wave51];
    
    THMissionWaveInfo* wave52 = [[THMissionWaveInfo alloc] init];
    wave52.waveTime = 61;
    NSMutableArray* wave52spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave52spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave52spawn1.monsterClass = [MDFireMonster class];
    wave52spawn1.minCount = 1;
    wave52spawn1.maxCount = 1;
    wave52spawn1.region = 4;
    [wave52spawn addObject:wave52spawn1];
    wave52.spawn = wave52spawn;
    [waves addObject:wave52];
    
    THMissionWaveInfo* wave53 = [[THMissionWaveInfo alloc] init];
    wave53.waveTime = 61;
    NSMutableArray* wave53spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave53spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave53spawn1.monsterClass = [MDFireMonster class];
    wave53spawn1.minCount = 1;
    wave53spawn1.maxCount = 1;
    wave53spawn1.region = 1;
    [wave53spawn addObject:wave53spawn1];
    wave53.spawn = wave53spawn;
    [waves addObject:wave53];
    
    THMissionWaveInfo* wave54 = [[THMissionWaveInfo alloc] init];
    wave54.waveTime = 61;
    NSMutableArray* wave54spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave54spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave54spawn1.monsterClass = [MDHelmetMonster class];
    wave54spawn1.minCount = 1;
    wave54spawn1.maxCount = 1;
    wave54spawn1.region = 5;
    [wave54spawn addObject:wave54spawn1];
    wave54.spawn = wave54spawn;
    [waves addObject:wave54];
    
    THMissionWaveInfo* wave55 = [[THMissionWaveInfo alloc] init];
    wave55.waveTime = 61;
    NSMutableArray* wave55spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave55spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave55spawn1.monsterClass = [MDHelmetMonster class];
    wave55spawn1.minCount = 1;
    wave55spawn1.maxCount = 1;
    wave55spawn1.region = 3;
    [wave55spawn addObject:wave55spawn1];
    wave55.spawn = wave55spawn;
    [waves addObject:wave55];
    
    THMissionWaveInfo* wave56 = [[THMissionWaveInfo alloc] init];
    wave56.waveTime = 61;
    NSMutableArray* wave56spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave56spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave56spawn1.monsterClass = [MDHelmetMonster class];
    wave56spawn1.minCount = 1;
    wave56spawn1.maxCount = 1;
    wave56spawn1.region = 2;
    [wave56spawn addObject:wave56spawn1];
    wave56.spawn = wave56spawn;
    [waves addObject:wave56];
    
    THMissionWaveInfo* wave57 = [[THMissionWaveInfo alloc] init];
    wave57.waveTime = 61;
    NSMutableArray* wave57spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave57spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave57spawn1.monsterClass = [MDHelmetMonster class];
    wave57spawn1.minCount = 1;
    wave57spawn1.maxCount = 1;
    wave57spawn1.region = 0;
    [wave57spawn addObject:wave57spawn1];
    wave57.spawn = wave57spawn;
    [waves addObject:wave57];
    
    THMissionWaveInfo* wave58 = [[THMissionWaveInfo alloc] init];
    wave58.waveTime = 64;
    NSMutableArray* wave58spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave58spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave58spawn1.monsterClass = [MDFireMonster class];
    wave58spawn1.minCount = 1;
    wave58spawn1.maxCount = 1;
    wave58spawn1.region = 5;
    [wave58spawn addObject:wave58spawn1];
    wave58.spawn = wave58spawn;
    [waves addObject:wave58];
    
    THMissionWaveInfo* wave59 = [[THMissionWaveInfo alloc] init];
    wave59.waveTime = 64;
    NSMutableArray* wave59spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave59spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave59spawn1.monsterClass = [MDFireMonster class];
    wave59spawn1.minCount = 1;
    wave59spawn1.maxCount = 1;
    wave59spawn1.region = 4;
    [wave59spawn addObject:wave59spawn1];
    wave59.spawn = wave59spawn;
    [waves addObject:wave59];
    
    THMissionWaveInfo* wave60 = [[THMissionWaveInfo alloc] init];
    wave60.waveTime = 66;
    NSMutableArray* wave60spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave60spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave60spawn1.monsterClass = [MDFireMonster class];
    wave60spawn1.minCount = 1;
    wave60spawn1.maxCount = 1;
    wave60spawn1.region = 1;
    [wave60spawn addObject:wave60spawn1];
    wave60.spawn = wave60spawn;
    [waves addObject:wave60];
    
    THMissionWaveInfo* wave61 = [[THMissionWaveInfo alloc] init];
    wave61.waveTime = 66;
    NSMutableArray* wave61spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave61spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave61spawn1.monsterClass = [MDFireMonster class];
    wave61spawn1.minCount = 1;
    wave61spawn1.maxCount = 1;
    wave61spawn1.region = 0;
    [wave61spawn addObject:wave61spawn1];
    wave61.spawn = wave61spawn;
    [waves addObject:wave61];
    
    return mission;
}

- (THMissionInfo*)createLevel3 {
    THMissionInfo* mission = [[THMissionInfo alloc] init];
    NSMutableArray* waves = [NSMutableArray array];
    mission.waves = waves;
    NSMutableArray* cuePointWaves = [NSMutableArray array];
    mission.cuePointWaves = cuePointWaves;
    
    THMissionWaveInfo* wave1 = [[THMissionWaveInfo alloc] init];
    wave1.waveTime = 1;
    NSMutableArray* wave1spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave1spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave1spawn1.monsterClass = [MDSpeedyMonster class];
    wave1spawn1.minCount = 1;
    wave1spawn1.maxCount = 1;
    wave1spawn1.region = 4;
    [wave1spawn addObject:wave1spawn1];
    wave1.spawn = wave1spawn;
    [waves addObject:wave1];
    
    THMissionWaveInfo* wave2 = [[THMissionWaveInfo alloc] init];
    wave2.waveTime = 2;
    NSMutableArray* wave2spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave2spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave2spawn1.monsterClass = [MDSpeedyMonster class];
    wave2spawn1.minCount = 1;
    wave2spawn1.maxCount = 1;
    wave2spawn1.region = 5;
    [wave2spawn addObject:wave2spawn1];
    wave2.spawn = wave2spawn;
    [waves addObject:wave2];
    
    THMissionWaveInfo* wave3 = [[THMissionWaveInfo alloc] init];
    wave3.waveTime = 2;
    NSMutableArray* wave3spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave3spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave3spawn1.monsterClass = [MDSpeedyMonster class];
    wave3spawn1.minCount = 1;
    wave3spawn1.maxCount = 1;
    wave3spawn1.region = 3;
    [wave3spawn addObject:wave3spawn1];
    wave3.spawn = wave3spawn;
    [waves addObject:wave3];
    
    THMissionWaveInfo* wave4 = [[THMissionWaveInfo alloc] init];
    wave4.waveTime = 2;
    NSMutableArray* wave4spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave4spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave4spawn1.monsterClass = [MDFireMonster class];
    wave4spawn1.minCount = 1;
    wave4spawn1.maxCount = 1;
    wave4spawn1.region = 4;
    [wave4spawn addObject:wave4spawn1];
    wave4.spawn = wave4spawn;
    [waves addObject:wave4];
    
    THMissionWaveInfo* wave6 = [[THMissionWaveInfo alloc] init];
    wave6.waveTime = 5;
    NSMutableArray* wave6spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave6spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave6spawn1.monsterClass = [MDSpeedyMonster class];
    wave6spawn1.minCount = 1;
    wave6spawn1.maxCount = 1;
    wave6spawn1.region = 1;
    [wave6spawn addObject:wave6spawn1];
    wave6.spawn = wave6spawn;
    [waves addObject:wave6];
    
    THMissionWaveInfo* wave7 = [[THMissionWaveInfo alloc] init];
    wave7.waveTime = 6;
    NSMutableArray* wave7spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave7spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave7spawn1.monsterClass = [MDSpeedyMonster class];
    wave7spawn1.minCount = 1;
    wave7spawn1.maxCount = 1;
    wave7spawn1.region = 2;
    [wave7spawn addObject:wave7spawn1];
    wave7.spawn = wave7spawn;
    [waves addObject:wave7];
    
    THMissionWaveInfo* wave8 = [[THMissionWaveInfo alloc] init];
    wave8.waveTime = 6;
    NSMutableArray* wave8spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave8spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave8spawn1.monsterClass = [MDSpeedyMonster class];
    wave8spawn1.minCount = 1;
    wave8spawn1.maxCount = 1;
    wave8spawn1.region = 0;
    [wave8spawn addObject:wave8spawn1];
    wave8.spawn = wave8spawn;
    [waves addObject:wave8];
    
    THMissionWaveInfo* wave9 = [[THMissionWaveInfo alloc] init];
    wave9.waveTime = 6;
    NSMutableArray* wave9spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave9spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave9spawn1.monsterClass = [MDFireMonster class];
    wave9spawn1.minCount = 1;
    wave9spawn1.maxCount = 1;
    wave9spawn1.region = 1;
    [wave9spawn addObject:wave9spawn1];
    wave9.spawn = wave9spawn;
    [waves addObject:wave9];
    
    THMissionWaveInfo* wave11 = [[THMissionWaveInfo alloc] init];
    wave11.waveTime = 10;
    NSMutableArray* wave11spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave11spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave11spawn1.monsterClass = [MDHelmetMonster class];
    wave11spawn1.minCount = 1;
    wave11spawn1.maxCount = 1;
    wave11spawn1.region = 3;
    [wave11spawn addObject:wave11spawn1];
    wave11.spawn = wave11spawn;
    [waves addObject:wave11];
    
    THMissionWaveInfo* wave12 = [[THMissionWaveInfo alloc] init];
    wave12.waveTime = 10;
    NSMutableArray* wave12spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave12spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave12spawn1.monsterClass = [MDHelmetMonster class];
    wave12spawn1.minCount = 1;
    wave12spawn1.maxCount = 1;
    wave12spawn1.region = 2;
    [wave12spawn addObject:wave12spawn1];
    wave12.spawn = wave12spawn;
    [waves addObject:wave12];
    
    THMissionWaveInfo* wave13 = [[THMissionWaveInfo alloc] init];
    wave13.waveTime = 11;
    NSMutableArray* wave13spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave13spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave13spawn1.monsterClass = [MDFireMonster class];
    wave13spawn1.minCount = 1;
    wave13spawn1.maxCount = 1;
    wave13spawn1.region = 3;
    [wave13spawn addObject:wave13spawn1];
    wave13.spawn = wave13spawn;
    [waves addObject:wave13];
    
    THMissionWaveInfo* wave14 = [[THMissionWaveInfo alloc] init];
    wave14.waveTime = 11;
    NSMutableArray* wave14spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave14spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave14spawn1.monsterClass = [MDFireMonster class];
    wave14spawn1.minCount = 1;
    wave14spawn1.maxCount = 1;
    wave14spawn1.region = 2;
    [wave14spawn addObject:wave14spawn1];
    wave14.spawn = wave14spawn;
    [waves addObject:wave14];
    
    THCuePointInfo *point3 = [[THCuePointInfo alloc] init];
    point3.eventTime = 14;
    point3.cueName = @"cuepoint-3.png";
    point3.skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init], [[SDLaserAttack alloc] init], [[SDPoisonAttack alloc] init]];
    [cuePointWaves addObject:point3];
    
    THMissionWaveInfo* wave16 = [[THMissionWaveInfo alloc] init];
    wave16.waveTime = 15;
    NSMutableArray* wave16spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave16spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave16spawn1.monsterClass = [MDGiantMonster class];
    wave16spawn1.minCount = 1;
    wave16spawn1.maxCount = 1;
    wave16spawn1.region = 3;
    [wave16spawn addObject:wave16spawn1];
    wave16.spawn = wave16spawn;
    [waves addObject:wave16];
    
    THMissionWaveInfo* wave18 = [[THMissionWaveInfo alloc] init];
    wave18.waveTime = 17;
    NSMutableArray* wave18spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave18spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave18spawn1.monsterClass = [MDGiantMonster class];
    wave18spawn1.minCount = 1;
    wave18spawn1.maxCount = 1;
    wave18spawn1.region = 2;
    [wave18spawn addObject:wave18spawn1];
    wave18.spawn = wave18spawn;
    [waves addObject:wave18];
    
    THMissionWaveInfo* wave20 = [[THMissionWaveInfo alloc] init];
    wave20.waveTime = 19;
    NSMutableArray* wave20spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave20spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave20spawn1.monsterClass = [MDGiantMonster class];
    wave20spawn1.minCount = 1;
    wave20spawn1.maxCount = 1;
    wave20spawn1.region = 3;
    [wave20spawn addObject:wave20spawn1];
    wave20.spawn = wave20spawn;
    [waves addObject:wave20];
    
    THMissionWaveInfo* wave21 = [[THMissionWaveInfo alloc] init];
    wave21.waveTime = 19;
    NSMutableArray* wave21spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave21spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave21spawn1.monsterClass = [MDGiantMonster class];
    wave21spawn1.minCount = 1;
    wave21spawn1.maxCount = 1;
    wave21spawn1.region = 2;
    [wave21spawn addObject:wave21spawn1];
    wave21.spawn = wave21spawn;
    [waves addObject:wave21];
    
    THMissionWaveInfo* wave22 = [[THMissionWaveInfo alloc] init];
    wave22.waveTime = 21;
    NSMutableArray* wave22spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave22spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave22spawn1.monsterClass = [MDGiantMonster class];
    wave22spawn1.minCount = 1;
    wave22spawn1.maxCount = 1;
    wave22spawn1.region = 5;
    [wave22spawn addObject:wave22spawn1];
    wave22.spawn = wave22spawn;
    [waves addObject:wave22];
    
    THMissionWaveInfo* wave23 = [[THMissionWaveInfo alloc] init];
    wave23.waveTime = 21;
    NSMutableArray* wave23spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave23spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave23spawn1.monsterClass = [MDGiantMonster class];
    wave23spawn1.minCount = 1;
    wave23spawn1.maxCount = 1;
    wave23spawn1.region = 4;
    [wave23spawn addObject:wave23spawn1];
    wave23.spawn = wave23spawn;
    [waves addObject:wave23];
    
    THMissionWaveInfo* wave24 = [[THMissionWaveInfo alloc] init];
    wave24.waveTime = 21;
    NSMutableArray* wave24spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave24spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave24spawn1.monsterClass = [MDGiantMonster class];
    wave24spawn1.minCount = 1;
    wave24spawn1.maxCount = 1;
    wave24spawn1.region = 1;
    [wave24spawn addObject:wave24spawn1];
    wave24.spawn = wave24spawn;
    [waves addObject:wave24];
    
    THMissionWaveInfo* wave25 = [[THMissionWaveInfo alloc] init];
    wave25.waveTime = 21;
    NSMutableArray* wave25spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave25spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave25spawn1.monsterClass = [MDGiantMonster class];
    wave25spawn1.minCount = 1;
    wave25spawn1.maxCount = 1;
    wave25spawn1.region = 0;
    [wave25spawn addObject:wave25spawn1];
    wave25.spawn = wave25spawn;
    [waves addObject:wave25];
    
    THMissionWaveInfo* wave27 = [[THMissionWaveInfo alloc] init];
    wave27.waveTime = 28;
    NSMutableArray* wave27spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave27spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave27spawn1.monsterClass = [MDHelmetMonster class];
    wave27spawn1.minCount = 1;
    wave27spawn1.maxCount = 1;
    wave27spawn1.region = 4;
    [wave27spawn addObject:wave27spawn1];
    wave27.spawn = wave27spawn;
    [waves addObject:wave27];
    
    THMissionWaveInfo* wave28 = [[THMissionWaveInfo alloc] init];
    wave28.waveTime = 28;
    NSMutableArray* wave28spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave28spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave28spawn1.monsterClass = [MDHelmetMonster class];
    wave28spawn1.minCount = 1;
    wave28spawn1.maxCount = 1;
    wave28spawn1.region = 1;
    [wave28spawn addObject:wave28spawn1];
    wave28.spawn = wave28spawn;
    [waves addObject:wave28];
    
    THMissionWaveInfo* wave29 = [[THMissionWaveInfo alloc] init];
    wave29.waveTime = 29;
    NSMutableArray* wave29spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave29spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave29spawn1.monsterClass = [MDGiantMonster class];
    wave29spawn1.minCount = 1;
    wave29spawn1.maxCount = 1;
    wave29spawn1.region = 4;
    [wave29spawn addObject:wave29spawn1];
    wave29.spawn = wave29spawn;
    [waves addObject:wave29];
    
    THMissionWaveInfo* wave30 = [[THMissionWaveInfo alloc] init];
    wave30.waveTime = 29;
    NSMutableArray* wave30spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave30spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave30spawn1.monsterClass = [MDGiantMonster class];
    wave30spawn1.minCount = 1;
    wave30spawn1.maxCount = 1;
    wave30spawn1.region = 1;
    [wave30spawn addObject:wave30spawn1];
    wave30.spawn = wave30spawn;
    [waves addObject:wave30];
    
    THMissionWaveInfo* wave31 = [[THMissionWaveInfo alloc] init];
    wave31.waveTime = 29;
    NSMutableArray* wave31spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave31spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave31spawn1.monsterClass = [MDFireMonster class];
    wave31spawn1.minCount = 1;
    wave31spawn1.maxCount = 1;
    wave31spawn1.region = 5;
    [wave31spawn addObject:wave31spawn1];
    wave31.spawn = wave31spawn;
    [waves addObject:wave31];
    
    THMissionWaveInfo* wave32 = [[THMissionWaveInfo alloc] init];
    wave32.waveTime = 29;
    NSMutableArray* wave32spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave32spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave32spawn1.monsterClass = [MDFireMonster class];
    wave32spawn1.minCount = 1;
    wave32spawn1.maxCount = 1;
    wave32spawn1.region = 3;
    [wave32spawn addObject:wave32spawn1];
    wave32.spawn = wave32spawn;
    [waves addObject:wave32];
    
    THMissionWaveInfo* wave33 = [[THMissionWaveInfo alloc] init];
    wave33.waveTime = 29;
    NSMutableArray* wave33spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave33spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave33spawn1.monsterClass = [MDFireMonster class];
    wave33spawn1.minCount = 1;
    wave33spawn1.maxCount = 1;
    wave33spawn1.region = 2;
    [wave33spawn addObject:wave33spawn1];
    wave33.spawn = wave33spawn;
    [waves addObject:wave33];
    
    THMissionWaveInfo* wave34 = [[THMissionWaveInfo alloc] init];
    wave34.waveTime = 29;
    NSMutableArray* wave34spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave34spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave34spawn1.monsterClass = [MDFireMonster class];
    wave34spawn1.minCount = 1;
    wave34spawn1.maxCount = 1;
    wave34spawn1.region = 0;
    [wave34spawn addObject:wave34spawn1];
    wave34.spawn = wave34spawn;
    [waves addObject:wave34];
    
    THMissionWaveInfo* wave36 = [[THMissionWaveInfo alloc] init];
    wave36.waveTime = 40;
    NSMutableArray* wave36spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave36spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave36spawn1.monsterClass = [MDSpeedyMonster class];
    wave36spawn1.minCount = 1;
    wave36spawn1.maxCount = 1;
    wave36spawn1.region = 4;
    [wave36spawn addObject:wave36spawn1];
    wave36.spawn = wave36spawn;
    [waves addObject:wave36];
    
    THMissionWaveInfo* wave37 = [[THMissionWaveInfo alloc] init];
    wave37.waveTime = 40;
    NSMutableArray* wave37spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave37spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave37spawn1.monsterClass = [MDSpeedyMonster class];
    wave37spawn1.minCount = 1;
    wave37spawn1.maxCount = 1;
    wave37spawn1.region = 1;
    [wave37spawn addObject:wave37spawn1];
    wave37.spawn = wave37spawn;
    [waves addObject:wave37];
    
    THMissionWaveInfo* wave38 = [[THMissionWaveInfo alloc] init];
    wave38.waveTime = 41;
    NSMutableArray* wave38spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave38spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave38spawn1.monsterClass = [MDSpeedyMonster class];
    wave38spawn1.minCount = 1;
    wave38spawn1.maxCount = 1;
    wave38spawn1.region = 5;
    [wave38spawn addObject:wave38spawn1];
    wave38.spawn = wave38spawn;
    [waves addObject:wave38];
    
    THMissionWaveInfo* wave39 = [[THMissionWaveInfo alloc] init];
    wave39.waveTime = 41;
    NSMutableArray* wave39spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave39spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave39spawn1.monsterClass = [MDSpeedyMonster class];
    wave39spawn1.minCount = 1;
    wave39spawn1.maxCount = 1;
    wave39spawn1.region = 3;
    [wave39spawn addObject:wave39spawn1];
    wave39.spawn = wave39spawn;
    [waves addObject:wave39];
    
    THMissionWaveInfo* wave40 = [[THMissionWaveInfo alloc] init];
    wave40.waveTime = 41;
    NSMutableArray* wave40spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave40spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave40spawn1.monsterClass = [MDSpeedyMonster class];
    wave40spawn1.minCount = 1;
    wave40spawn1.maxCount = 1;
    wave40spawn1.region = 2;
    [wave40spawn addObject:wave40spawn1];
    wave40.spawn = wave40spawn;
    [waves addObject:wave40];
    
    THMissionWaveInfo* wave41 = [[THMissionWaveInfo alloc] init];
    wave41.waveTime = 41;
    NSMutableArray* wave41spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave41spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave41spawn1.monsterClass = [MDSpeedyMonster class];
    wave41spawn1.minCount = 1;
    wave41spawn1.maxCount = 1;
    wave41spawn1.region = 0;
    [wave41spawn addObject:wave41spawn1];
    wave41.spawn = wave41spawn;
    [waves addObject:wave41];
    
    THMissionWaveInfo* wave42 = [[THMissionWaveInfo alloc] init];
    wave42.waveTime = 41;
    NSMutableArray* wave42spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave42spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave42spawn1.monsterClass = [MDGiantMonster class];
    wave42spawn1.minCount = 1;
    wave42spawn1.maxCount = 1;
    wave42spawn1.region = 4;
    [wave42spawn addObject:wave42spawn1];
    wave42.spawn = wave42spawn;
    [waves addObject:wave42];
    
    THMissionWaveInfo* wave43 = [[THMissionWaveInfo alloc] init];
    wave43.waveTime = 41;
    NSMutableArray* wave43spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave43spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave43spawn1.monsterClass = [MDGiantMonster class];
    wave43spawn1.minCount = 1;
    wave43spawn1.maxCount = 1;
    wave43spawn1.region = 1;
    [wave43spawn addObject:wave43spawn1];
    wave43.spawn = wave43spawn;
    [waves addObject:wave43];
    
    THMissionWaveInfo* wave44 = [[THMissionWaveInfo alloc] init];
    wave44.waveTime = 44;
    NSMutableArray* wave44spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave44spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave44spawn1.monsterClass = [MDHelmetMonster class];
    wave44spawn1.minCount = 1;
    wave44spawn1.maxCount = 1;
    wave44spawn1.region = 3;
    [wave44spawn addObject:wave44spawn1];
    wave44.spawn = wave44spawn;
    [waves addObject:wave44];
    
    THMissionWaveInfo* wave45 = [[THMissionWaveInfo alloc] init];
    wave45.waveTime = 44;
    NSMutableArray* wave45spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave45spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave45spawn1.monsterClass = [MDHelmetMonster class];
    wave45spawn1.minCount = 1;
    wave45spawn1.maxCount = 1;
    wave45spawn1.region = 2;
    [wave45spawn addObject:wave45spawn1];
    wave45.spawn = wave45spawn;
    [waves addObject:wave45];
    
    THMissionWaveInfo* wave46 = [[THMissionWaveInfo alloc] init];
    wave46.waveTime = 45;
    NSMutableArray* wave46spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave46spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave46spawn1.monsterClass = [MDFireMonster class];
    wave46spawn1.minCount = 1;
    wave46spawn1.maxCount = 1;
    wave46spawn1.region = 3;
    [wave46spawn addObject:wave46spawn1];
    wave46.spawn = wave46spawn;
    [waves addObject:wave46];
    
    THMissionWaveInfo* wave47 = [[THMissionWaveInfo alloc] init];
    wave47.waveTime = 45;
    NSMutableArray* wave47spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave47spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave47spawn1.monsterClass = [MDFireMonster class];
    wave47spawn1.minCount = 1;
    wave47spawn1.maxCount = 1;
    wave47spawn1.region = 2;
    [wave47spawn addObject:wave47spawn1];
    wave47.spawn = wave47spawn;
    [waves addObject:wave47];
    
    THMissionWaveInfo* wave49 = [[THMissionWaveInfo alloc] init];
    wave49.waveTime = 52;
    NSMutableArray* wave49spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave49spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave49spawn1.monsterClass = [MDHelmetMonster class];
    wave49spawn1.minCount = 1;
    wave49spawn1.maxCount = 1;
    wave49spawn1.region = 5;
    [wave49spawn addObject:wave49spawn1];
    wave49.spawn = wave49spawn;
    [waves addObject:wave49];
    
    THMissionWaveInfo* wave50 = [[THMissionWaveInfo alloc] init];
    wave50.waveTime = 52;
    NSMutableArray* wave50spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave50spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave50spawn1.monsterClass = [MDHelmetMonster class];
    wave50spawn1.minCount = 1;
    wave50spawn1.maxCount = 1;
    wave50spawn1.region = 4;
    [wave50spawn addObject:wave50spawn1];
    wave50.spawn = wave50spawn;
    [waves addObject:wave50];
    
    THMissionWaveInfo* wave51 = [[THMissionWaveInfo alloc] init];
    wave51.waveTime = 52;
    NSMutableArray* wave51spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave51spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave51spawn1.monsterClass = [MDHelmetMonster class];
    wave51spawn1.minCount = 1;
    wave51spawn1.maxCount = 1;
    wave51spawn1.region = 3;
    [wave51spawn addObject:wave51spawn1];
    wave51.spawn = wave51spawn;
    [waves addObject:wave51];
    
    THMissionWaveInfo* wave52 = [[THMissionWaveInfo alloc] init];
    wave52.waveTime = 53;
    NSMutableArray* wave52spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave52spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave52spawn1.monsterClass = [MDFireMonster class];
    wave52spawn1.minCount = 1;
    wave52spawn1.maxCount = 1;
    wave52spawn1.region = 4;
    [wave52spawn addObject:wave52spawn1];
    wave52.spawn = wave52spawn;
    [waves addObject:wave52];
    
    THMissionWaveInfo* wave53 = [[THMissionWaveInfo alloc] init];
    wave53.waveTime = 55;
    NSMutableArray* wave53spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave53spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave53spawn1.monsterClass = [MDHelmetMonster class];
    wave53spawn1.minCount = 1;
    wave53spawn1.maxCount = 1;
    wave53spawn1.region = 2;
    [wave53spawn addObject:wave53spawn1];
    wave53.spawn = wave53spawn;
    [waves addObject:wave53];
    
    THMissionWaveInfo* wave54 = [[THMissionWaveInfo alloc] init];
    wave54.waveTime = 55;
    NSMutableArray* wave54spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave54spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave54spawn1.monsterClass = [MDHelmetMonster class];
    wave54spawn1.minCount = 1;
    wave54spawn1.maxCount = 1;
    wave54spawn1.region = 1;
    [wave54spawn addObject:wave54spawn1];
    wave54.spawn = wave54spawn;
    [waves addObject:wave54];
    
    THMissionWaveInfo* wave55 = [[THMissionWaveInfo alloc] init];
    wave55.waveTime = 55;
    NSMutableArray* wave55spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave55spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave55spawn1.monsterClass = [MDHelmetMonster class];
    wave55spawn1.minCount = 1;
    wave55spawn1.maxCount = 1;
    wave55spawn1.region = 0;
    [wave55spawn addObject:wave55spawn1];
    wave55.spawn = wave55spawn;
    [waves addObject:wave55];
    
    THMissionWaveInfo* wave56 = [[THMissionWaveInfo alloc] init];
    wave56.waveTime = 56;
    NSMutableArray* wave56spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave56spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave56spawn1.monsterClass = [MDFireMonster class];
    wave56spawn1.minCount = 1;
    wave56spawn1.maxCount = 1;
    wave56spawn1.region = 1;
    [wave56spawn addObject:wave56spawn1];
    wave56.spawn = wave56spawn;
    [waves addObject:wave56];
    
    THMissionWaveInfo* wave57 = [[THMissionWaveInfo alloc] init];
    wave57.waveTime = 62;
    NSMutableArray* wave57spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave57spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave57spawn1.monsterClass = [MDHelmetMonster class];
    wave57spawn1.minCount = 1;
    wave57spawn1.maxCount = 1;
    wave57spawn1.region = 5;
    [wave57spawn addObject:wave57spawn1];
    wave57.spawn = wave57spawn;
    [waves addObject:wave57];
    
    THMissionWaveInfo* wave58 = [[THMissionWaveInfo alloc] init];
    wave58.waveTime = 62;
    NSMutableArray* wave58spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave58spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave58spawn1.monsterClass = [MDHelmetMonster class];
    wave58spawn1.minCount = 1;
    wave58spawn1.maxCount = 1;
    wave58spawn1.region = 4;
    [wave58spawn addObject:wave58spawn1];
    wave58.spawn = wave58spawn;
    [waves addObject:wave58];
    
    THMissionWaveInfo* wave59 = [[THMissionWaveInfo alloc] init];
    wave59.waveTime = 62;
    NSMutableArray* wave59spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave59spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave59spawn1.monsterClass = [MDHelmetMonster class];
    wave59spawn1.minCount = 1;
    wave59spawn1.maxCount = 1;
    wave59spawn1.region = 3;
    [wave59spawn addObject:wave59spawn1];
    wave59.spawn = wave59spawn;
    [waves addObject:wave59];
    
    THMissionWaveInfo* wave60 = [[THMissionWaveInfo alloc] init];
    wave60.waveTime = 63;
    NSMutableArray* wave60spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave60spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave60spawn1.monsterClass = [MDFireMonster class];
    wave60spawn1.minCount = 1;
    wave60spawn1.maxCount = 1;
    wave60spawn1.region = 5;
    [wave60spawn addObject:wave60spawn1];
    wave60.spawn = wave60spawn;
    [waves addObject:wave60];
    
    THMissionWaveInfo* wave61 = [[THMissionWaveInfo alloc] init];
    wave61.waveTime = 63;
    NSMutableArray* wave61spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave61spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave61spawn1.monsterClass = [MDGiantMonster class];
    wave61spawn1.minCount = 1;
    wave61spawn1.maxCount = 1;
    wave61spawn1.region = 4;
    [wave61spawn addObject:wave61spawn1];
    wave61.spawn = wave61spawn;
    [waves addObject:wave61];
    
    THMissionWaveInfo* wave62 = [[THMissionWaveInfo alloc] init];
    wave62.waveTime = 63;
    NSMutableArray* wave62spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave62spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave62spawn1.monsterClass = [MDFireMonster class];
    wave62spawn1.minCount = 1;
    wave62spawn1.maxCount = 1;
    wave62spawn1.region = 3;
    [wave62spawn addObject:wave62spawn1];
    wave62.spawn = wave62spawn;
    [waves addObject:wave62];
    
    THMissionWaveInfo* wave63 = [[THMissionWaveInfo alloc] init];
    wave63.waveTime = 66;
    NSMutableArray* wave63spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave63spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave63spawn1.monsterClass = [MDHelmetMonster class];
    wave63spawn1.minCount = 1;
    wave63spawn1.maxCount = 1;
    wave63spawn1.region = 2;
    [wave63spawn addObject:wave63spawn1];
    wave63.spawn = wave63spawn;
    [waves addObject:wave63];
    
    THMissionWaveInfo* wave64 = [[THMissionWaveInfo alloc] init];
    wave64.waveTime = 66;
    NSMutableArray* wave64spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave64spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave64spawn1.monsterClass = [MDHelmetMonster class];
    wave64spawn1.minCount = 1;
    wave64spawn1.maxCount = 1;
    wave64spawn1.region = 1;
    [wave64spawn addObject:wave64spawn1];
    wave64.spawn = wave64spawn;
    [waves addObject:wave64];
    
    THMissionWaveInfo* wave65 = [[THMissionWaveInfo alloc] init];
    wave65.waveTime = 66;
    NSMutableArray* wave65spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave65spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave65spawn1.monsterClass = [MDHelmetMonster class];
    wave65spawn1.minCount = 1;
    wave65spawn1.maxCount = 1;
    wave65spawn1.region = 0;
    [wave65spawn addObject:wave65spawn1];
    wave65.spawn = wave65spawn;
    [waves addObject:wave65];
    
    THMissionWaveInfo* wave66 = [[THMissionWaveInfo alloc] init];
    wave66.waveTime = 67;
    NSMutableArray* wave66spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave66spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave66spawn1.monsterClass = [MDFireMonster class];
    wave66spawn1.minCount = 1;
    wave66spawn1.maxCount = 1;
    wave66spawn1.region = 2;
    [wave66spawn addObject:wave66spawn1];
    wave66.spawn = wave66spawn;
    [waves addObject:wave66];
    
    THMissionWaveInfo* wave67 = [[THMissionWaveInfo alloc] init];
    wave67.waveTime = 67;
    NSMutableArray* wave67spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave67spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave67spawn1.monsterClass = [MDGiantMonster class];
    wave67spawn1.minCount = 1;
    wave67spawn1.maxCount = 1;
    wave67spawn1.region = 1;
    [wave67spawn addObject:wave67spawn1];
    wave67.spawn = wave67spawn;
    [waves addObject:wave67];
    
    THMissionWaveInfo* wave68 = [[THMissionWaveInfo alloc] init];
    wave68.waveTime = 67;
    NSMutableArray* wave68spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave68spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave68spawn1.monsterClass = [MDFireMonster class];
    wave68spawn1.minCount = 1;
    wave68spawn1.maxCount = 1;
    wave68spawn1.region = 0;
    [wave68spawn addObject:wave68spawn1];
    wave68.spawn = wave68spawn;
    [waves addObject:wave68];
    
    THMissionWaveInfo* wave70 = [[THMissionWaveInfo alloc] init];
    wave70.waveTime = 80;
    NSMutableArray* wave70spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave70spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave70spawn1.monsterClass = [MDGiantMonster class];
    wave70spawn1.minCount = 1;
    wave70spawn1.maxCount = 1;
    wave70spawn1.region = 4;
    [wave70spawn addObject:wave70spawn1];
    wave70.spawn = wave70spawn;
    [waves addObject:wave70];
    
    THMissionWaveInfo* wave71 = [[THMissionWaveInfo alloc] init];
    wave71.waveTime = 80;
    NSMutableArray* wave71spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave71spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave71spawn1.monsterClass = [MDGiantMonster class];
    wave71spawn1.minCount = 1;
    wave71spawn1.maxCount = 1;
    wave71spawn1.region = 1;
    [wave71spawn addObject:wave71spawn1];
    wave71.spawn = wave71spawn;
    [waves addObject:wave71];
    
    THMissionWaveInfo* wave72 = [[THMissionWaveInfo alloc] init];
    wave72.waveTime = 81;
    NSMutableArray* wave72spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave72spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave72spawn1.monsterClass = [MDFireMonster class];
    wave72spawn1.minCount = 1;
    wave72spawn1.maxCount = 1;
    wave72spawn1.region = 5;
    [wave72spawn addObject:wave72spawn1];
    wave72.spawn = wave72spawn;
    [waves addObject:wave72];
    
    THMissionWaveInfo* wave73 = [[THMissionWaveInfo alloc] init];
    wave73.waveTime = 81;
    NSMutableArray* wave73spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave73spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave73spawn1.monsterClass = [MDFireMonster class];
    wave73spawn1.minCount = 1;
    wave73spawn1.maxCount = 1;
    wave73spawn1.region = 3;
    [wave73spawn addObject:wave73spawn1];
    wave73.spawn = wave73spawn;
    [waves addObject:wave73];
    
    THMissionWaveInfo* wave74 = [[THMissionWaveInfo alloc] init];
    wave74.waveTime = 81;
    NSMutableArray* wave74spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave74spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave74spawn1.monsterClass = [MDFireMonster class];
    wave74spawn1.minCount = 1;
    wave74spawn1.maxCount = 1;
    wave74spawn1.region = 2;
    [wave74spawn addObject:wave74spawn1];
    wave74.spawn = wave74spawn;
    [waves addObject:wave74];
    
    THMissionWaveInfo* wave75 = [[THMissionWaveInfo alloc] init];
    wave75.waveTime = 81;
    NSMutableArray* wave75spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave75spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave75spawn1.monsterClass = [MDFireMonster class];
    wave75spawn1.minCount = 1;
    wave75spawn1.maxCount = 1;
    wave75spawn1.region = 0;
    [wave75spawn addObject:wave75spawn1];
    wave75.spawn = wave75spawn;
    [waves addObject:wave75];
    
    THMissionWaveInfo* wave76 = [[THMissionWaveInfo alloc] init];
    wave76.waveTime = 86;
    NSMutableArray* wave76spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave76spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave76spawn1.monsterClass = [MDHelmetMonster class];
    wave76spawn1.minCount = 1;
    wave76spawn1.maxCount = 1;
    wave76spawn1.region = 3;
    [wave76spawn addObject:wave76spawn1];
    wave76.spawn = wave76spawn;
    [waves addObject:wave76];
    
    THMissionWaveInfo* wave77 = [[THMissionWaveInfo alloc] init];
    wave77.waveTime = 86;
    NSMutableArray* wave77spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave77spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave77spawn1.monsterClass = [MDHelmetMonster class];
    wave77spawn1.minCount = 1;
    wave77spawn1.maxCount = 1;
    wave77spawn1.region = 2;
    [wave77spawn addObject:wave77spawn1];
    wave77.spawn = wave77spawn;
    [waves addObject:wave77];
    
    THMissionWaveInfo* wave78 = [[THMissionWaveInfo alloc] init];
    wave78.waveTime = 87;
    NSMutableArray* wave78spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave78spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave78spawn1.monsterClass = [MDGiantMonster class];
    wave78spawn1.minCount = 1;
    wave78spawn1.maxCount = 1;
    wave78spawn1.region = 3;
    [wave78spawn addObject:wave78spawn1];
    wave78.spawn = wave78spawn;
    [waves addObject:wave78];
    
    THMissionWaveInfo* wave79 = [[THMissionWaveInfo alloc] init];
    wave79.waveTime = 87;
    NSMutableArray* wave79spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave79spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave79spawn1.monsterClass = [MDGiantMonster class];
    wave79spawn1.minCount = 1;
    wave79spawn1.maxCount = 1;
    wave79spawn1.region = 2;
    [wave79spawn addObject:wave79spawn1];
    wave79.spawn = wave79spawn;
    [waves addObject:wave79];
    
    THMissionWaveInfo* wave80 = [[THMissionWaveInfo alloc] init];
    wave80.waveTime = 88;
    NSMutableArray* wave80spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave80spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave80spawn1.monsterClass = [MDFireMonster class];
    wave80spawn1.minCount = 1;
    wave80spawn1.maxCount = 1;
    wave80spawn1.region = 4;
    [wave80spawn addObject:wave80spawn1];
    wave80.spawn = wave80spawn;
    [waves addObject:wave80];
    
    THMissionWaveInfo* wave81 = [[THMissionWaveInfo alloc] init];
    wave81.waveTime = 88;
    NSMutableArray* wave81spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave81spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave81spawn1.monsterClass = [MDFireMonster class];
    wave81spawn1.minCount = 1;
    wave81spawn1.maxCount = 1;
    wave81spawn1.region = 1;
    [wave81spawn addObject:wave81spawn1];
    wave81.spawn = wave81spawn;
    [waves addObject:wave81];
    
    THMissionWaveInfo* wave82 = [[THMissionWaveInfo alloc] init];
    wave82.waveTime = 92;
    NSMutableArray* wave82spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave82spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave82spawn1.monsterClass = [MDGiantMonster class];
    wave82spawn1.minCount = 1;
    wave82spawn1.maxCount = 1;
    wave82spawn1.region = 5;
    [wave82spawn addObject:wave82spawn1];
    wave82.spawn = wave82spawn;
    [waves addObject:wave82];
    
    THMissionWaveInfo* wave83 = [[THMissionWaveInfo alloc] init];
    wave83.waveTime = 92;
    NSMutableArray* wave83spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave83spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave83spawn1.monsterClass = [MDGiantMonster class];
    wave83spawn1.minCount = 1;
    wave83spawn1.maxCount = 1;
    wave83spawn1.region = 4;
    [wave83spawn addObject:wave83spawn1];
    wave83.spawn = wave83spawn;
    [waves addObject:wave83];
    
    THMissionWaveInfo* wave84 = [[THMissionWaveInfo alloc] init];
    wave84.waveTime = 92;
    NSMutableArray* wave84spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave84spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave84spawn1.monsterClass = [MDGiantMonster class];
    wave84spawn1.minCount = 1;
    wave84spawn1.maxCount = 1;
    wave84spawn1.region = 3;
    [wave84spawn addObject:wave84spawn1];
    wave84.spawn = wave84spawn;
    [waves addObject:wave84];
    
    THMissionWaveInfo* wave85 = [[THMissionWaveInfo alloc] init];
    wave85.waveTime = 92;
    NSMutableArray* wave85spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave85spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave85spawn1.monsterClass = [MDGiantMonster class];
    wave85spawn1.minCount = 1;
    wave85spawn1.maxCount = 1;
    wave85spawn1.region = 2;
    [wave85spawn addObject:wave85spawn1];
    wave85.spawn = wave85spawn;
    [waves addObject:wave85];
    
    THMissionWaveInfo* wave86 = [[THMissionWaveInfo alloc] init];
    wave86.waveTime = 92;
    NSMutableArray* wave86spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave86spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave86spawn1.monsterClass = [MDGiantMonster class];
    wave86spawn1.minCount = 1;
    wave86spawn1.maxCount = 1;
    wave86spawn1.region = 1;
    [wave86spawn addObject:wave86spawn1];
    wave86.spawn = wave86spawn;
    [waves addObject:wave86];
    
    THMissionWaveInfo* wave87 = [[THMissionWaveInfo alloc] init];
    wave87.waveTime = 92;
    NSMutableArray* wave87spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave87spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave87spawn1.monsterClass = [MDGiantMonster class];
    wave87spawn1.minCount = 1;
    wave87spawn1.maxCount = 1;
    wave87spawn1.region = 0;
    [wave87spawn addObject:wave87spawn1];
    wave87.spawn = wave87spawn;
    [waves addObject:wave87];
    
    return mission;
}

- (THMissionInfo*)createLevel4 {
    THMissionInfo* mission = [[THMissionInfo alloc] init];
    NSMutableArray* waves = [NSMutableArray array];
    mission.waves = waves;
    NSMutableArray* cuePointWaves = [NSMutableArray array];
    mission.cuePointWaves = cuePointWaves;
    
    
    THCuePointInfo *point4 = [[THCuePointInfo alloc] init];
    point4.eventTime = 0.;
    point4.cueName = @"cuepoint-4.png";
    point4.skills = @[[[SDIcyArrowAttack alloc] init], [[SDFrostAttack alloc] init], [[SDLaserAttack alloc] init], [[SDPoisonAttack alloc] init], [[SDPlant alloc] init]];
    [cuePointWaves addObject:point4];
    
    
    THMissionWaveInfo* wave1 = [[THMissionWaveInfo alloc] init];
    wave1.waveTime = 1;
    NSMutableArray* wave1spawn = [NSMutableArray array];
    THMonsterSpawnInfo* wave1spawn1 = [[THMonsterSpawnInfo alloc] init];
    wave1spawn1.monsterClass = [MDBoss class];
    wave1spawn1.minCount = 1;
    wave1spawn1.maxCount = 1;
    wave1spawn1.region = 3;
    [wave1spawn addObject:wave1spawn1];
    wave1.spawn = wave1spawn;
    [waves addObject:wave1];
    
    return mission;
}

@end
