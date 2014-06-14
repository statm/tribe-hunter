//
//  THMissionInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMissionInfo.h"

@implementation THMissionInfo

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMissionInfo: waves= %@, %@>",  _waves, _cuePointWaves];
}


@end
