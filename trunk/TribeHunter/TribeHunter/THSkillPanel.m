//
//  THMasteryPanel.m
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THSkillPanel.h"

@implementation THSkillPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // self.backgroundColor = [UIColor purpleColor];
        UIImageView* _icearrow = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 44.0f, 44.0f)];
        [_icearrow setImage:[UIImage imageNamed:@"icy.jpg"]];
        [self addSubview:_icearrow];
        
        UITextView* _intro_ice = [[UITextView alloc] initWithFrame:CGRectMake(64, 0, 136.0f, 90.0f)];
        [_intro_ice setText:@"Icy Arrow: slow down one enemy for 5 sec"];
        [_intro_ice setUserInteractionEnabled:NO];
        _intro_ice.backgroundColor = [UIColor clearColor];
        _intro_ice.textColor = [UIColor whiteColor];
        _intro_ice.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_ice];
        
        UIImageView* _aoearrow = [[UIImageView alloc] initWithFrame:CGRectMake(10, 84, 44.0f, 44.0f)];
        [_aoearrow setImage:[UIImage imageNamed:@"frost.jpg"]];
        [self addSubview:_aoearrow];
        
        UITextView* _intro_aoe = [[UITextView alloc] initWithFrame:CGRectMake(64, 74, 136.0f, 90.0f)];
        [_intro_aoe setText:@"Frost Bomb: slow down all enemies in range for 5 sec"];
        [_intro_aoe setUserInteractionEnabled:NO];
        _intro_aoe.backgroundColor = [UIColor clearColor];
        _intro_aoe.textColor = [UIColor whiteColor];
        _intro_aoe.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_aoe];
        
        UIImageView* _laser = [[UIImageView alloc] initWithFrame:CGRectMake(210, 84, 44.0f, 44.0f)];
        [_laser setImage:[UIImage imageNamed:@"laser.png"]];
        [self addSubview:_laser];
        
        UITextView* _intro_laser = [[UITextView alloc] initWithFrame:CGRectMake(264, 74, 136.0f, 90.0f)];
        [_intro_laser setText:@"Laser: deals massive damage to all enemies on a row"];
        [_intro_laser setUserInteractionEnabled:NO];
        _intro_laser.backgroundColor = [UIColor clearColor];
        _intro_laser.textColor = [UIColor whiteColor];
        _intro_laser.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_laser];
        
        UIImageView* _posiarrow = [[UIImageView alloc] initWithFrame:CGRectMake(10, 158, 44.0f, 44.0f)];
        [_posiarrow setImage:[UIImage imageNamed:@"poison.jpg"]];
        [self addSubview:_posiarrow];
        
        UITextView* _intro_pois = [[UITextView alloc] initWithFrame:CGRectMake(64, 148, 136.0f, 90.0f)];
        [_intro_pois setText:@"Venom Arrow: poison an enemy for 5 sec"];
        [_intro_pois setUserInteractionEnabled:NO];
        _intro_pois.backgroundColor = [UIColor clearColor];
        _intro_pois.textColor = [UIColor whiteColor];
        _intro_pois.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_pois];
        
        
        UIImageView* _treemen = [[UIImageView alloc] initWithFrame:CGRectMake(210, 10, 44.0f, 44.0f)];
        [_treemen setImage:[UIImage imageNamed:@"plant_icon.png"]];
        [self addSubview:_treemen];
        
        UITextView* _intro_treemen = [[UITextView alloc] initWithFrame:CGRectMake(264, 0, 136.0f, 90.0f)];
        [_intro_treemen setText:@"Ally: summon a tree elf as your ally"];
        [_intro_treemen setUserInteractionEnabled:NO];
        _intro_treemen.backgroundColor = [UIColor clearColor];
        _intro_treemen.textColor = [UIColor whiteColor];
        _intro_treemen.font = [UIFont fontWithName:@"Chalkduster" size:12.];
        [self addSubview:_intro_treemen];
    }
    return self;
}


@end
