//
//  THGameContent.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameContent.h"

@implementation THGameContent

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _missions = [decoder decodeObjectForKey:@"missions"];
        _skills = [decoder decodeObjectForKey:@"skills"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_missions forKey:@"missions"];
    [encoder encodeObject:_skills forKey:@"skills"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THGameContent: missions=%@, skills=%@>",
            _missions,
            _skills];
}

@end
