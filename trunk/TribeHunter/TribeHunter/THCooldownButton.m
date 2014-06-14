//
//  THCooldownButton.m
//  TribeHunter
//
//  Created by Student on 3/8/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THCooldownButton.h"

@implementation THCooldownButton{
    UIView* _mask;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) initWithImage:(NSString *)name location:(CGRect)frame attachedSkill: (THSkillInfo *) skill{
    if(self = [super initWithFrame:frame]){
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        _button.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        [self addSubview:_button];
        
        _mask = [[UIView alloc] initWithFrame:_button.frame];
        _mask.backgroundColor = [UIColor colorWithRed:1. green:1. blue:0. alpha:.6];
        [self addSubview:_mask];
        
        _skill = skill;
        
        [self update:0.];
    }
    return self;

}

- (void) update: (float) percentage{
    _mask.frame = CGRectMake(0.0, _button.frame.size.height*(1.0-percentage), _button.frame.size.width, _button.frame.size.height * percentage);
    self.alpha = 1. - percentage * .9;
}

- (void)addHighlight {
    [_button.layer setBorderWidth:3.];
    [_button.layer setCornerRadius:4.];
    [_button.layer setBorderColor:[UIColor colorWithRed:1. green:1. blue:0. alpha:.6].CGColor];

}

- (void)removeHighlight {
    [_button.layer setBorderWidth:0.];
}

@end
