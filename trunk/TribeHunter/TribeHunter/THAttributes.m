//
//  THAttributes.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THAttributes.h"

@implementation THAttributes {
    int _HP;
}

- (id)init {
    if (self = [super init]) {
        self.resistance = [NSMutableDictionary dictionary];
    }
    return self;
}

- (int)HP {
    return _HP;
}

- (void)setHP:(int)HP {
    if (HP < 0) {
        _HP = 0;
    } else {
        _HP = HP;
    }
}

- (id)copyWithZone:(NSZone *)zone {
    THAttributes* copy = [[[self class] alloc] init];
    if (copy) {
        [copy setHP:self.HP];
        [copy setAttackPower:self.attackPower];
        [copy setCriticalRate:self.criticalRate];
        [copy setDodgeRate:self.dodgeRate];
        [copy setSpeed:self.speed];
        [copy setResistance:[self.resistance copyWithZone:zone]];
    }
    return copy;
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _HP = [decoder decodeIntForKey:@"HP"];
        _attackPower = [decoder decodeIntForKey:@"attackPower"];
        _criticalRate = [decoder decodeFloatForKey:@"criticalRate"];
        _dodgeRate = [decoder decodeFloatForKey:@"dodgeRate"];
        _resistance = [decoder decodeObjectForKey:@"resistance"];
        _speed = 1.;
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
