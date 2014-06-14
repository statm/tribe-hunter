//
//  THGameData.m
//  TribeHunter
//
//  Created by Yue Cai on 2/17/14.
//  Copyright 2014 TH-Team. All rights reserved.
//

#import "THGameData.h"

@implementation THGameData

- (NSString*)description {
    return [NSString stringWithFormat:@"<THGameData: mission=%@, money=%d, attr=%@, slot=%@>",
            _mission,
            _money,
            _attributes,
            _slotSetting];
}

@end
