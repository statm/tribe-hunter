//
//  THSkillInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THSkillInfo.h"

@implementation THSkillInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _name = [decoder decodeObjectForKey:@"name"];
        _desc = [decoder decodeObjectForKey:@"desc"];
        _levelRequired = [decoder decodeIntForKey:@"levelRequired"];
        _cost = [decoder decodeIntForKey:@"cost"];
        _parentSkills = [decoder decodeObjectForKey:@"parentSkills"];
        _effects = [decoder decodeObjectForKey:@"effects"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_name forKey:@"name"];
    [encoder encodeObject:_desc forKey:@"desc"];
    [encoder encodeInt:_levelRequired forKey:@"levelRequired"];
    [encoder encodeInt:_cost forKey:@"cost"];
    [encoder encodeObject:_parentSkills forKey:@"parentSkills"];
    [encoder encodeObject:_effects forKey:@"effects"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THSkillInfo: name=%@, desc=%@, levelReq=%d, cost=%d, parent=%@, effects=%@>",
            _name,
            _desc,
            _levelRequired,
            _cost,
            _parentSkills,
            _effects];
}

@end
