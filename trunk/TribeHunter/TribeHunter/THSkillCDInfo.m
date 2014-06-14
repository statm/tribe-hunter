//
//  THSkillCDInfo.m
//  TribeHunter
//
//  Created by Yue Cai on 3/22/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THSkillCDInfo.h"

@implementation THSkillCDInfo
@synthesize remainCDTime = _remainCDTime;
@synthesize skills = _skills;

- (void) update: (float) delta{
    for (int i = 0; i < [_remainCDTime count]; i++) {
        NSNumber *item  = [_remainCDTime objectAtIndex:i];
        
        if([item floatValue] > 0){
            [_remainCDTime replaceObjectAtIndex:i withObject:[NSNumber numberWithFloat:[item floatValue] - delta]];
            
            if ([[_remainCDTime objectAtIndex:i] floatValue] < 0) {
                [_remainCDTime replaceObjectAtIndex:i withObject:[NSNumber numberWithFloat:0.0]];
            }
        }
    }
    
    //NSLog(@"after update, the cooling down time becomes:%f", [item floatValue]);
}

- (THSkillInfo *) getFirstReadySkill{
    for (int i = 0; i < [_remainCDTime count]; i++) {
        if ([[_remainCDTime objectAtIndex:i] floatValue] == 0) {
            return [_skills objectAtIndex:i];
        }
    }
    return nil;
}

- (id) initWithSkills:(NSArray *)skills{
    if(self = [super init]){
        _skills = [[NSArray alloc] initWithArray:[skills copy]];
        _remainCDTime = [[NSMutableArray alloc] init];
        for (int i = 0; i < [skills count]; i++) {
            [_remainCDTime addObject:[NSNumber numberWithFloat:0.0]];
        }
//        NSLog(@"%@", @"init the skills and its cooling down time");
//        for (NSNumber *number in _remainCDTime) {
//            NSLog(@"the three initial cooling down time is:%f", [number floatValue]);
//        }
    }
    return self;
}

- (void) startCDSkill:(THSkillInfo *)skill{
    for (int i = 0; i < [_skills count]; i++){
        if ([[_skills objectAtIndex:i] isEqual:skill]) {
//            NSLog(@"%@", @"skill found");
            [_remainCDTime replaceObjectAtIndex:i withObject:[NSNumber numberWithFloat:[[_skills objectAtIndex:i] coolDown]]];
            break;
        }
    }
}


- (NSArray *) getCDRate{
    NSMutableArray *temp = [[NSMutableArray alloc] init];
    for (int i = 0; i < [_remainCDTime count]; i++) {
        float rate = [[_remainCDTime objectAtIndex:i] floatValue]/[[_skills objectAtIndex:i] coolDown];
        [temp addObject:[NSNumber numberWithFloat:rate]];
    }
    return [NSArray arrayWithArray:temp];
}


- (BOOL)isSkillReady:(THSkillInfo *)skill {
    return ([_remainCDTime[[_skills indexOfObject:skill]] floatValue] == 0);
}

@end
