//
//  THMissionWaveInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMissionWaveInfo.h"

// -----------------------------------------------------------------------
#pragma mark - THMonsterSpawnInfo
// -----------------------------------------------------------------------
@implementation THMonsterSpawnInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _monster = [decoder decodeObjectForKey:@"monster"];
        _minCount = [decoder decodeIntForKey:@"minCount"];
        _maxCount = [decoder decodeIntForKey:@"maxCount"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:_monster forKey:@"monster"];
    [encoder encodeInt:_minCount forKey:@"minCount"];
    [encoder encodeInt:_maxCount forKey:@"maxCount"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMonsterSpawnInfo: monster=%@, min=%d, max=%d>",
            _monster,
            _minCount,
            _maxCount];
}

@end


// -----------------------------------------------------------------------
#pragma mark - THMissionWaveInfo
// -----------------------------------------------------------------------
@implementation THMissionWaveInfo

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        _waveTime = [decoder decodeIntForKey:@"waveTime"];
        _spawn = [decoder decodeObjectForKey:@"spawn"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeInt:_waveTime forKey:@"waveTime"];
    [encoder encodeObject:_spawn forKey:@"spawn"];
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMissionWaveInfo: waveTime=%d, spawn=%@>",
            _waveTime,
            _spawn];
}

@end
