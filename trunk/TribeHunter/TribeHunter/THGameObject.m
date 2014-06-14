//
//  THGameObject.m
//  TribeHunter
//
//  Created by Baichuan Yang on 2/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGameObject.h"
#import "Macros.h"

@implementation THGameObject {
    NSMutableArray *labels;
}

- (id)init {
    if (self = [super init]) {
        _timer = 0.;
    }
    return self;
}

/* override me */
- (void)update:(double)delta {
    _timer += delta;
    for (int i = 0; i < [labels count]; i++) {
        CCLabelTTF *label = [labels objectAtIndex:i];
        if (label.position.y > 2*[self.appearance boundingBox].size.height/3) {
            [labels removeObject:label];
            [self.appearance removeChild:label];
        }
        else {
            label.position = CGPointMake(label.position.x, label.position.y + 1);
            label.opacity *= 0.98;
        }
    }
}

- (float)x {
    return _x;
}

- (void)setX:(float)x {
    _x = x;
    if (_appearance) {
        _appearance.position = CGPointMake(_x, R2P(_y));
    }
}

- (int)y {
    return _y;
}

- (void)setY:(int)y {
    _y = y;
    if (_appearance) {
        _appearance.position = CGPointMake(_x, R2P(_y));
    }
}

- (void)showDamage:(float)damage {
    if (labels == nil) {
        labels = [NSMutableArray array];
    }
    CCLabelTTF* label = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d", (int)damage] fontName:@"Helvetica" fontSize:12];
    label.color = ccYELLOW;
    [labels addObject:label];
    [self.appearance addChild:label];
    label.position = CGPointMake([self.appearance boundingBox].size.width/2, 10);
}

- (void)showEffectName: (NSString *)effectName {
    if (labels == nil) {
        labels = [NSMutableArray array];
    }
    CCLabelTTF* label = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%@", effectName] fontName:@"Helvetica" fontSize:12];
    label.color = ccBLUE;
    [labels addObject:label];
    [self.appearance addChild:label];
    label.position = CGPointMake([self.appearance boundingBox].size.width/2, 0);
}

@end
