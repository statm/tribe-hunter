//
//  THMonsterInfo.m
//  TribeHunter
//
//  Created by Jialiang Li on 2014/2/17.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THMonsterInfo.h"
#import "Macros.h"

@implementation THMonsterInfo

- (id)init {
    if (self = [super init]) {
        self.animActionName = @"walk";
        self.animActionPrefix = @"";
        self.effects = [NSMutableArray array];
        self.type = kMonsterTypeMelee;
        self.skills = @[];
    }
    return self;
}

- (NSString*)description {
    return [NSString stringWithFormat:@"<THMonsterInfo: name=%@, attr=%@, skills=%@>",
            _name,
            _attributes,
            _skills];
}


- (void)addEffect:(THEffectInfo *)effect {
    [_effects addObject:effect];
}

- (void)update:(ccTime)delta {
    for (int i = [_effects count] - 1; i >= 0; i--) {
        THEffectInfo* effect = _effects[i];
        if (effect.finished) {
            [effect remove:(THGameObject*)_monster];
            [_effects removeObject:effect];
        }
    }
    
    for (THEffectInfo* effect in _effects) {
        [effect update:delta];
        [effect apply:(THGameObject*)_monster];
    }
}

@end
