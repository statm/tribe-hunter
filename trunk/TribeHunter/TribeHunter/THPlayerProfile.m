//
//  THPlayerProfile.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THPlayerProfile.h"

@implementation THPlayerProfile

+ (THPlayerProfile*)createDefaultPlayerProfile {
    return [[self alloc] initWithDefaultData];
}

- (id)initWithDefaultData {
    if (self = [super init]) {
        _name = @"Player";
        _level = 1;
        _money = 0;
        _attributes = [[THAttributes alloc] init];
        _completedMissions = [NSMutableArray array];
        _learnedSkills = [NSMutableArray array];
        _slotSetting = [NSMutableArray array];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _name = [decoder decodeObjectForKey:@"name"];
        _level = [decoder decodeIntForKey:@"level"];
        _money = [decoder decodeIntForKey:@"money"];
        _attributes = [decoder decodeObjectForKey:@"attributes"];
        _completedMissions = [decoder decodeObjectForKey:@"completedMissions"];
        _learnedSkills = [decoder decodeObjectForKey:@"learnedSkills"];
        _slotSetting = [decoder decodeObjectForKey:@"slotSetting"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_name forKey:@"name"];
    [encoder encodeInt:_level forKey:@"level"];
    [encoder encodeInt:_money forKey:@"money"];
    [encoder encodeObject:_attributes forKey:@"attributes"];
    [encoder encodeObject:_completedMissions forKey:@"completedMissions"];
    [encoder encodeObject:_learnedSkills forKey:@"learnedSkills"];
    [encoder encodeObject:_slotSetting forKey:@"slotSetting"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THPlayerProfile: name=%@, level=%d, money=%d, attr=%@, compMis=%@, lrndSkl=%@, slots=%@>",
            _name,
            _level,
            _money,
            _attributes,
            _completedMissions,
            _learnedSkills,
            _slotSetting];
}

@end
