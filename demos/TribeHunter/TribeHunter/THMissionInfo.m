//
//  THMissionInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMissionInfo.h"

@implementation THMissionInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _waves = [decoder decodeObjectForKey:@"waves"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_waves forKey:@"waves"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMissionInfo: waves=%@>",
            _waves];
}


@end
