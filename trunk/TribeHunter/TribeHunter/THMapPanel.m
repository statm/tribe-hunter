//
//  THMapPanel.m
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THMapPanel.h"
#import "THCore.h"

@implementation THMapPanel {
    UIButton *_level1, *_level2, *_level3, *_level4;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // self.backgroundColor = [UIColor blueColor];
        
        _level1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_level1 setBackgroundImage:[UIImage imageNamed:@"level1.png"] forState:UIControlStateNormal];
        _level1.frame = CGRectMake(40.0f, 50.0f, 80.0f, 120.0f);
        [_level1 addTarget:self action:@selector(level1Clicked) forControlEvents:UIControlEventTouchUpInside];
        
        _level2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_level2 setBackgroundImage:[UIImage imageNamed:@"level2.png"] forState:UIControlStateNormal];
        _level2.frame = CGRectMake(130.0f, 50.0f, 80.0f, 120.0f);
        [_level2 addTarget:self action:@selector(level2Clicked) forControlEvents:UIControlEventTouchUpInside];
        
        _level3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_level3 setBackgroundImage:[UIImage imageNamed:@"level3.png"] forState:UIControlStateNormal];
        _level3.frame = CGRectMake(220.0f, 50.0f, 80.0f, 120.0f);
        [_level3 addTarget:self action:@selector(level3Clicked) forControlEvents:UIControlEventTouchUpInside];
        
        _level4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_level4 setBackgroundImage:[UIImage imageNamed:@"level4.png"] forState:UIControlStateNormal];
        _level4.frame = CGRectMake(310.0f, 50.0f, 80.0f, 120.0f);
        [_level4 addTarget:self action:@selector(level4Clicked) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:_level1];
        [self addSubview:_level2];
        [self addSubview:_level3];
        [self addSubview:_level4];
    }
    return self;
}

-(void)level1Clicked {
    [[THCore sharedCore] enterGameWithMissionID:0];
}

-(void)level2Clicked {
    [[THCore sharedCore] enterGameWithMissionID:1];
}

-(void)level3Clicked {
    [[THCore sharedCore] enterGameWithMissionID:2];
}

-(void)level4Clicked {
    [[THCore sharedCore] enterGameWithMissionID:3];
}

@end
