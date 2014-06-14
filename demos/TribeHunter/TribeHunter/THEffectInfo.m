//
//  THEffectInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THEffectInfo.h"

@implementation THEffectInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _type = [decoder decodeIntForKey:@"type"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeInt:_type forKey:@"type"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THEffectInfo: type=%d>",
            _type];
}

@end
