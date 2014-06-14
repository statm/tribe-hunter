//
//  THEffectInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THEffectInfo.h"
#import "THHero.h"
#import "THMonster.h"

@implementation THEffectInfo

- (id)init {
    if (self = [super init]) {
        _finished = NO;
        _timer = 0.;
    }
    return self;
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THEffectInfo: type=%d>",
            _type];
}

- (void)update:(ccTime)delta {
    _timer += delta;
}

- (void)apply:(THGameObject*)target {
    
}

- (void)remove:(THGameObject *)target {
    
}

@end
