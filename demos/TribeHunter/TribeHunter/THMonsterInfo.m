//
//  THMonsterInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMonsterInfo.h"

@implementation THMonsterInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _name = [decoder decodeObjectForKey:@"name"];
        _attributes = [decoder decodeObjectForKey:@"attributes"];
        _skills = [decoder decodeObjectForKey:@"skills"];
        _type = kMonsterTypeUnknown;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_name forKey:@"name"];
    [encoder encodeObject:_attributes forKey:@"attributes"];
    [encoder encodeObject:_skills forKey:@"skills"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMonsterInfo: name=%@, attr=%@, skills=%@>",
            _name,
            _attributes,
            _skills];
}

@end
