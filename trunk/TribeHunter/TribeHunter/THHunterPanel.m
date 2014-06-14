//
//  THHunterPanel.m
//  TribeHunter
//
//  Created by Student on 4/19/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THHunterPanel.h"

@implementation THHunterPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // self.backgroundColor = [UIColor blackColor];
        UIImageView* _hunterinfo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 120.0f)];
        [_hunterinfo setImage:[UIImage imageNamed:@"heroinfo.png"]];
        [self addSubview:_hunterinfo];
    }
    return self;
}

@end
