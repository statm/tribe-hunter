//
//  main.m
//  SerDeser
//
//  Created by statm on 2014/2/18.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "THAttackType.h"
#import "THAttributes.h"
#import "THPlayerProfile.h"
#import "THGameContent.h"
#import "THMonsterInfo.h"
#import "THMissionWaveInfo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//        NSString *plistPath = [[paths objectAtIndex:0] stringByAppendingString:@"/test.plist"];
//        
//        THPlayerProfile* pp = [THPlayerProfile createTestObject];
//        NSMutableData* data = [NSMutableData data];
//        NSKeyedArchiver* archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
//        [archiver setOutputFormat:NSPropertyListXMLFormat_v1_0 ];
//        [archiver encodeObject:pp forKey:@"root"];
//        [archiver finishEncoding];
//        BOOL result = [data writeToFile:plistPath atomically:YES];
//        NSLog(@"%@", result ? @"YES" : @"NO");
//        
//        THPlayerProfile* pp2 = [NSKeyedUnarchiver unarchiveObjectWithFile:plistPath];
//        NSLog(@"%@", [pp2 description]);
        
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *plistPath = [[paths objectAtIndex:0] stringByAppendingString:@"/gameContent.plist"];

//        //--5.Attribute------------------------------
//        THAttributes *attr = [[THAttributes alloc] init];
//        attr.HP = 200;
//        attr.attackPower = 10;
//        attr.criticalRate = 0.19;
//        attr.dodgeRate = 0.10;
//        attr.resistance = [NSMutableDictionary dictionaryWithDictionary:@{@(kAttackTypePhysical): @(6.3)}];
//        
//        //--4.Monster--------------------------------
//        THMonsterInfo *monsterInfo = [[THMonsterInfo alloc] init];
//        monsterInfo.name = @"KFC";
//        monsterInfo.attributes = attr;
//        monsterInfo.skills = [NSArray arrayWithObjects:@"A",@"B",@"C",nil];;
//        
//        //--3.SpawnInfo------------------------------
//        THMonsterSpawnInfo *spawninfo = [[THMonsterSpawnInfo alloc] init];
//        spawninfo.monster=monsterInfo;
//        int min =1;
//        int max =5;
//        spawninfo.minCount=min;
//        spawninfo.maxCount=max;
//        
//        //--2.MissionWaveInfo------------------------
//        THMissionWaveInfo* waves = [[THMissionWaveInfo alloc] init];
//        waves.spawn = [NSArray arrayWithObjects:spawninfo,nil];
//        waves.waveTime=7;
//        
//        //--1.MissionInfo----------------------------
//        THMissionInfo* missioninfo = [[THMissionInfo alloc] init];
//        missioninfo.waves=[NSArray arrayWithObjects:waves,nil];
//        NSArray *missions = [NSArray arrayWithObjects:missioninfo,nil];
//        
//        //--1.SkillInfo------------------------------
//        THSkillInfo *skillInfo =[[THSkillInfo alloc] init];
//        skillInfo.name = @"McDonald";
//        skillInfo.desc = @"This is just a test for skill.";
//        skillInfo.levelRequired = 10;
//        skillInfo.cost = 10;
//        skillInfo.parentSkills=nil;
//        skillInfo.effects = [NSArray arrayWithObjects:@"Buble~",nil];;
//        NSArray *skills = [NSArray arrayWithObjects:@"four",@"five",@"six",skillInfo,nil];
//        
//        //--0.GameContent----------------------------
//        THGameContent* gc = [[THGameContent alloc] initWithTestData];
//        gc.missions = missions;
//        gc.skills = skills;
//        
//        //--Test--End------------------------------
//        
//        
//        
//        NSString* pp=[gc description];
//        NSLog(@"%@",pp);
//        
//        [NSKeyedArchiver archiveRootObject:gc toFile:plistPath];
//
//        THGameContent* gc2 = [NSKeyedUnarchiver unarchiveObjectWithFile:plistPath];
//        
//        NSString* pp2=[gc2 description];
//        NSLog(@"%@",pp2);
//
        
        
        NSString *filepath = @"/Users/hellonopassword/Desktop/test.txt";
        NSString *str = [[NSString alloc] initWithContentsOfFile:filepath
                                                        encoding:NSUTF8StringEncoding
                                                           error:NULL];
        NSArray *numArr = [str componentsSeparatedByString:@"\n"];
        NSLog(@"%@",numArr);
        
        
        THGameContent* gc3 = [[THGameContent alloc] init];
        THMissionInfo* missioninfo;
        THMissionWaveInfo* waves;
        THMonsterSpawnInfo* spawninfo;
        THMonsterInfo *monsterInfo;
        THAttributes *attr;
//        THSkillInfo *skillInfo;
        for (int i=0; i < numArr.count; i++) {
//            NSLog(@"Hello World!!~");
            int sign=0, pre=0;
            NSArray *numArr2 = [numArr[i] componentsSeparatedByString:@"_"];
            NSLog(@"%@",numArr2);
            if ([numArr2[1] isEqualToString:@"Mission"] && [numArr2[0] isEqualToString:@"1"]){
//                NSLog(@"Hello Mission!~~");
                pre=sign;
                sign = (int)numArr2[0];
                
                missioninfo = [[THMissionInfo alloc] init];//
                NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:4];//[gc3.skills mutableCopy];
                [muArray addObjectsFromArray:gc3.missions];
                [muArray addObject: missioninfo];
                gc3.missions = [muArray copy];

            }
            else if ([numArr2[1] isEqualToString:@"Waves"] && [numArr2[0] isEqualToString:@"2"]) {
//                NSLog(@"Hello Waves!~~");
                waves = [[THMissionWaveInfo alloc] init];//
//                [[NSMutableArray missioninfo.waves] addObject: waves];
                NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:6];// = [missioninfo.waves mutableCopy]; 问题：如何增加多波攻击？ done
                [muArray addObjectsFromArray:missioninfo.waves];
                [muArray addObject: waves];
//                missioninfo.waves = [muArray copy];
                missioninfo.waves= [NSArray arrayWithArray:muArray];
            }
            else if ([numArr2[1] isEqualToString:@"Spawn"] && [numArr2[0] isEqualToString:@"3"]) {
                spawninfo = [[THMonsterSpawnInfo alloc] init];//
                NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:4];//[waves.spawn mutableCopy];//[[NSMutableArray alloc] init];
                [muArray addObjectsFromArray:waves.spawn];
                [muArray addObject: spawninfo];
                waves.spawn = [muArray copy];
            }
            else if ([numArr2[1] isEqualToString:@"MonsterSpawn"] && [numArr2[0] isEqualToString:@"4"]) {
                monsterInfo = [[THMonsterInfo alloc] init];//
                spawninfo.monster = monsterInfo;
            }
            else if ([numArr2[1] isEqualToString:@"Name"] && [numArr2[0] isEqualToString:@"5"]) {
                monsterInfo.name = numArr2[2];
            }
            else if ([numArr2[1] isEqualToString:@"Attribute"] && [numArr2[0] isEqualToString:@"5"]){
                attr = [[THAttributes alloc] init];//
                monsterInfo.attributes = attr;
            }
            else if ([numArr2[1] isEqualToString:@"HP"] && [numArr2[0] isEqualToString:@"6"]){
                attr.HP = [numArr2[2] intValue];
            }
            else if ([numArr2[1] isEqualToString:@"Attack"] && [numArr2[0] isEqualToString:@"6"]){
                attr.attackPower = [numArr2[2] intValue];
            }
            else if ([numArr2[1] isEqualToString:@"Critical"] && [numArr2[0] isEqualToString:@"6"]){
                attr.criticalRate = [numArr2[2] floatValue];
            }
            else if ([numArr2[1] isEqualToString:@"Dodge"] && [numArr2[0] isEqualToString:@"6"]){
                attr.dodgeRate = [numArr2[2] floatValue];
            }
            else if ([numArr2[1] isEqualToString:@"Resistance"] && [numArr2[0] isEqualToString:@"6"]){
                attr.resistance = [NSMutableDictionary dictionaryWithDictionary:@{@([numArr2[2] intValue]): @([numArr2[3] floatValue])}];//这里的type有待解决。
            }
            else if ([numArr2[1] isEqualToString:@"Skills"] && [numArr2[0] isEqualToString:@"5"]){
//                NSArray *myMutableArray = [NSArray arrayWithArray:monsterInfo.skills];
//                NSArray *myArray = [myMutableArray copy];
                NSMutableArray *muArray = [[NSMutableArray alloc] init];
                for (int j=2;j< numArr2.count;j++){
                    [muArray addObject: numArr2[j]];
                }
                monsterInfo.skills = [muArray copy];
//                [monsterInfo.skills addObject: numArr2[2]];//Mutable.
            }
            else if ([numArr2[1] isEqualToString:@"Min"] && [numArr2[0] isEqualToString:@"4"]){
                spawninfo.minCount = [numArr2[2] intValue];
            }
            else if ([numArr2[1] isEqualToString:@"Max"] && [numArr2[0] isEqualToString:@"4"]){
                spawninfo.maxCount = [numArr2[2] intValue];
            }
            else if ([numArr2[1] isEqualToString:@"WaveTime"] && [numArr2[0] isEqualToString:@"3"]){
                waves.waveTime = [numArr2[2] intValue];
            }
//            else if ([numArr2[1] isEqualToString:@"Skill"] && [numArr2[0] isEqualToString:@"1"]){
//                skillInfo =[[THSkillInfo alloc] init];
//                NSMutableArray *muArray = [NSMutableArray arrayWithCapacity:4];//[gc3.skills mutableCopy];
//                [muArray addObjectsFromArray:gc3.skills];
//                [muArray addObject: skillInfo];
//                gc3.skills = [muArray copy];
//            }
//            else if ([numArr2[1] isEqualToString:@"SkillName"] && [numArr2[0] isEqualToString:@"2"]) {
//                skillInfo.name = numArr2[2];
//            }
//            else if ([numArr2[1] isEqualToString:@"SkillDesc"] && [numArr2[0] isEqualToString:@"2"]) {
//                skillInfo.desc = numArr2[2];
//            }
//            else if ([numArr2[1] isEqualToString:@"LevelRequired"] && [numArr2[0] isEqualToString:@"2"]) {
//                skillInfo.levelRequired = [numArr2[2] intValue];
//            }
//            else if ([numArr2[1] isEqualToString:@"Cost"] && [numArr2[0] isEqualToString:@"2"]) {
//                skillInfo.cost = [numArr2[2] intValue];//int
//            }
//            else if ([numArr2[1] isEqualToString:@"Parent"] && [numArr2[0] isEqualToString:@"2"]) {
//                skillInfo.parentSkills = numArr2[2];
//            }
//            else if ([numArr2[1] isEqualToString:@"Effect"] && [numArr2[0] isEqualToString:@"2"]) {
//                NSMutableArray *muArray = [[NSMutableArray alloc] init];
//                for (int j=2;j< numArr2.count;j++){
//                    [muArray addObject: numArr2[j]];
//                }
//                skillInfo.effects = [muArray copy];
//            }
            else if ([numArr2[0] isEqualToString:@"0"]){
                NSLog(@"%@",numArr2[1]);
            }
            else{
                NSLog(@"Ouch...");
            }
        }
        NSString* pp3=[gc3 description];
        NSLog(@"%@",pp3);
        
        [NSKeyedArchiver archiveRootObject:gc3 toFile:plistPath];
    }
    return 0;
}

