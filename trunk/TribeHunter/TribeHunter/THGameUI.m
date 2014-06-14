//
//  THGameUI.m
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THGameUI.h"
#import "THCore.h"
#import "THGamePausePanel.h"
#import "THCooldownButton.h"
#import "THGame.h"

@implementation THGameUI {
    UIImageView* _playerPhoto;
    //#arrow buttons should be generated dynamically, here we add them statically for illustration
    UIButton* _pauseButton;
    UIButton* _shopButton;
    UIView *_hpBar, *_spellBar;
    UILabel* _hpNumber;
    NSMutableArray* _buttons;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        //#Pause Button
        _pauseButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pauseButton setBackgroundImage:[UIImage imageNamed:@"pause.jpg"] forState:UIControlStateNormal];
        _pauseButton.frame = CGRectMake(508.0f, 260.0f, 60.0f, 60.0f);
        [_pauseButton addTarget:self action:@selector(pauseButtonClicked) forControlEvents:UIControlEventTouchUpInside];
        
        //#HP Bar
        _hpBar = [[UIView alloc] initWithFrame:CGRectMake(320.0f, 260.0f, 188.0f, 60.0f)];
        [_hpBar setBackgroundColor:[UIColor colorWithRed:204./255. green:0./255. blue:0./255. alpha:1.]];
        _hpNumber = [[UILabel alloc] initWithFrame:_hpBar.frame];
        [_hpBar addSubview:_hpNumber];
        [_hpNumber setCenter:CGPointMake(_hpBar.frame.size.width / 2, _hpBar.frame.size.height / 2)];
        _hpNumber.textColor = [UIColor whiteColor];
        [_hpNumber setTextAlignment:NSTextAlignmentCenter];
        _hpNumber.font = [_hpNumber.font fontWithSize:12.0f];
        
        //#Spell View
        _spellBar = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 260.0f, 260.0f, 60.0f)];
        UIImageView* _spellBarBg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 260.0f, 60.0f)];
        [_spellBarBg setImage:[UIImage imageNamed:@"skillbar.png"]];
        [_spellBar addSubview:_spellBarBg];
        
        //#Shop Button
        _shopButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_shopButton setBackgroundImage:[UIImage imageNamed:@"shoplabel.png"] forState:UIControlStateNormal];
        _shopButton.frame = CGRectMake(260.0f, 260.0f, 60.0f, 60.0f);
        [_shopButton addTarget:self action:@selector(shopButtonClicked) forControlEvents:UIControlEventTouchUpInside];
        
        //Add SubViews
        [self addSubview:_hpBar];
        [self addSubview:_pauseButton];
        [self addSubview:_spellBar];
        [self addSubview:_shopButton];
        
        self.autoresizingMask = UIViewAutoresizingAll;
    }
    return self;
}

- (void) setSkills:(NSArray *)skills{
    _buttons = [NSMutableArray array];
    
    for (int i = 0; i < [skills count]; i++) {
        THSkillInfo *skill = [skills objectAtIndex:i];
        THCooldownButton *button = [[THCooldownButton alloc] initWithImage:[skill iconID] location:CGRectMake(50.0f * i + 5.0f, 5.0f, 50.0f, 50.0f) attachedSkill:skill];
        [button.button addTarget:self action:@selector(buttonTouchDown:) forControlEvents:UIControlEventTouchDown];
        [button.button addTarget:self action:@selector(buttonTouchUp:) forControlEvents:UIControlEventTouchUpInside];
        [_spellBar addSubview:button];
        [_buttons addObject:button];
    }
    
}

- (void)pauseButtonClicked {
    [[[THCore sharedCore] game] pause];
}

- (void)shopButtonClicked {
    [[[THCore sharedCore] game] shop];
}


- (void)updateWithCurrentHP:(int)currentHP
                    totalHP:(int)totalHP
                   coolDown:(NSArray*)coolDownTable {
    _hpBar.frame = CGRectMake(320.0f, 260.0f, 188.0f * currentHP / totalHP, 60.0f);
    _hpNumber.text = [[NSString alloc] initWithFormat:@"%d/%d", currentHP, totalHP ];
    for (int i = 0; i < _buttons.count; i++) {
        THCooldownButton* button = _buttons[i];
        [button update:[coolDownTable[i] floatValue]];
    }
}

-(void) buttonTouchDown:(id) sender{
    for (THCooldownButton* THCooldownButton in _buttons) {
        if (THCooldownButton.button == sender) {
            [THCooldownButton addHighlight];
        }
    }
}

-(void) buttonTouchUp:(id) sender{
    for (THCooldownButton* THCooldownButton in _buttons) {
        if (THCooldownButton.button == sender) {
            [THCooldownButton removeHighlight];
            [[[THCore sharedCore] game] selectSkill:THCooldownButton.skill];
        }
    }
}

- (void) setSelectedSkill:(THSkillInfo *)skill{
    for (UIView *view in _spellBar.subviews) {
        if ([view isMemberOfClass:[THCooldownButton class]]) {
            THCooldownButton *button = (THCooldownButton *)view;
            if ([button.skill isEqual:skill]) {
                [button.button.layer setBorderWidth:3.];
                [button.button.layer setCornerRadius:4.];
                [button.button.layer setBorderColor:[UIColor yellowColor].CGColor];
            } else {
                [button.button.layer setBorderWidth:0.];
            }
        }
    }
}
@end
