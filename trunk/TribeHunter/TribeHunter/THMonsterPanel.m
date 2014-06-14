//
//  THOtherPanel.m
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THMonsterPanel.h"

@implementation THMonsterPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // self.backgroundColor = [UIColor greenColor];
        UIImageView* _normal = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 44.0f, 44.0f)];
        [_normal setImage:[UIImage imageNamed:@"normalmosterlabel.png"]];
        [self addSubview:_normal];
        
        UITextView* _intro_normal = [[UITextView alloc] initWithFrame:CGRectMake(64, 10, 136.0f, 44.0f)];
        [_intro_normal setText:@"Wolverine "];
        [_intro_normal setUserInteractionEnabled:NO];
        _intro_normal.backgroundColor = [UIColor clearColor];
        _intro_normal.textColor = [UIColor whiteColor];
        _intro_normal.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_normal];
        
        UIImageView* _fly = [[UIImageView alloc] initWithFrame:CGRectMake(10, 64, 44.0f, 44.0f)];
        [_fly setImage:[UIImage imageNamed:@"flymonsterlabel.png"]];
        [self addSubview:_fly];
        
        UITextView* _intro_fly = [[UITextView alloc] initWithFrame:CGRectMake(64, 64, 136.0f, 44.0f)];
        [_intro_fly setText:@"Bat"];
        [_intro_fly setUserInteractionEnabled:NO];
        _intro_fly.backgroundColor = [UIColor clearColor];
        _intro_fly.textColor = [UIColor whiteColor];
        _intro_fly.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_fly];
        
        UIImageView* _iron = [[UIImageView alloc] initWithFrame:CGRectMake(210, 64, 44.0f, 44.0f)];
        [_iron setImage:[UIImage imageNamed:@"ironmonsterlabel.png"]];
        [self addSubview:_iron];
        
        UITextView* _intro_iron = [[UITextView alloc] initWithFrame:CGRectMake(264, 64, 136.0f, 44.0f)];
        [_intro_iron setText:@"Iron Pig"];
        [_intro_iron setUserInteractionEnabled:NO];
        _intro_iron.textColor = [UIColor whiteColor];
        _intro_iron.backgroundColor = [UIColor clearColor];
        _intro_iron.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_iron];
        
        UIImageView* _giant = [[UIImageView alloc] initWithFrame:CGRectMake(10, 118, 44.0f, 44.0f)];
        [_giant setImage:[UIImage imageNamed:@"gaintmonsterlabel.png"]];
        [self addSubview:_giant];
        
        UITextView* _intro_giant = [[UITextView alloc] initWithFrame:CGRectMake(64, 118, 136.0f, 44.0f)];
        [_intro_giant setText:@"Giant Bear"];
        [_intro_giant setUserInteractionEnabled:NO];
        _intro_giant.backgroundColor = [UIColor clearColor];
        _intro_giant.textColor = [UIColor whiteColor];
        _intro_giant.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_giant];
        
        
        UIImageView* _fire = [[UIImageView alloc] initWithFrame:CGRectMake(210, 10, 44.0f, 44.0f)];
        [_fire setImage:[UIImage imageNamed:@"firemonsterlabel.png"]];
        [self addSubview:_fire];
        
        UITextView* _intro_fire = [[UITextView alloc] initWithFrame:CGRectMake(264, 10, 136.0f, 44.0f)];
        [_intro_fire setText:@"Pyro Pig"];
        [_intro_fire setUserInteractionEnabled:NO];
        _intro_fire.backgroundColor = [UIColor clearColor];
        _intro_fire.textColor = [UIColor whiteColor];
        _intro_fire.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_fire];
        
        UIImageView* _boss = [[UIImageView alloc] initWithFrame:CGRectMake(210, 118, 44.0f, 44.0f)];
        [_boss setImage:[UIImage imageNamed:@"bossicon.png"]];
        [self addSubview:_boss];
        
        UITextView* _intro_boss = [[UITextView alloc] initWithFrame:CGRectMake(264, 118, 136.0f, 44.0f)];
        [_intro_boss setText:@"Tree Monster"];
        [_intro_boss setUserInteractionEnabled:NO];
        _intro_boss.backgroundColor = [UIColor clearColor];
        _intro_boss.textColor = [UIColor whiteColor];
        _intro_boss.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_boss];
    }
    return self;
}

@end
