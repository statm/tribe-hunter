//
//  THHero.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THHero.h"
#import "THAnimation.h"

@implementation THHero

- (id)init {
    if (self = [super init]) {
        _baseAttributes = [THAttributes createDefaultPlayerAttributes];
        _currentAttributes = [THAttributes createDefaultPlayerAttributes];
        
        THAnimation* anim = [[THAnimation alloc] init];
        [anim load:@"hero"];
        [anim create:@"hero" delay:0.1f];
        anim.sprite.position = CGPointMake(50, 160);
        [anim playAnim:@"hero"];
        _appearance = anim.sprite;
    }
    return self;
}

- (void)update:(double)delta {
    // TODO
}

@end
