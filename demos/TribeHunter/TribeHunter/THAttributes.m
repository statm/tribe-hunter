//
//  THAttributes.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAttributes.h"

@implementation THAttributes

+ (THAttributes*)createDefaultPlayerAttributes {
    return [[self alloc] initWithDefaultData];
}


- (id)initWithDefaultData {
    if (self = [super init]) {
        _HP = 0;
        _attackPower = 0;
        _criticalRate = 0;
        _dodgeRate = 0;
        _resistance = [NSMutableDictionary dictionary];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _HP = [decoder decodeIntForKey:@"HP"];
        _attackPower = [decoder decodeIntForKey:@"attackPower"];
        _criticalRate = [decoder decodeFloatForKey:@"criticalRate"];
        _dodgeRate = [decoder decodeFloatForKey:@"dodgeRate"];
        _resistance = [decoder decodeObjectForKey:@"resistance"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeInteger:_HP forKey:@"HP"];
    [encoder encodeInteger:_attackPower forKey:@"attackPower"];
    [encoder encodeFloat:_criticalRate forKey:@"criticalRate"];
    [encoder encodeFloat:_dodgeRate forKey:@"dodgeRate"];
    [encoder encodeObject:_resistance forKey:@"resistance"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THAttributes: HP=%d, AtkPwr=%d, Crit=%f, Dodge=%f, Res=%@>",
            _HP,
            _attackPower,
            _criticalRate,
            _dodgeRate,
            _resistance];
}

@end
