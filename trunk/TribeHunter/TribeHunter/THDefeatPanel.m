//
//  THDefeatPanel.m
//  TribeHunter
//
//  Created by Kang Wang on 3/23/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THDefeatPanel.h"
#import "Macros.h"
#import "THCore.h"
#import "THSound.h"

@implementation THDefeatPanel{
    UIButton *_ok;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:1. alpha:.4];
        
        UIView *panel = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 280.0f, 250.0f)];
        panel.center = CGPointMake(frame.size.height / 2, frame.size.width / 2);
        
        UIImageView* _bgImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 270.0f, 235.0f)];
        [_bgImage setImage:[UIImage imageNamed:@"loseresultview.png"]];
        [panel addSubview:_bgImage];
        
        _ok = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_ok setBackgroundImage:[UIImage imageNamed:@"okbtn.png"] forState:UIControlStateNormal];
        _ok.frame = CGRectMake(95.0f, 205.0f, 90.0f, 30.0f);
        [_ok addTarget:self action:@selector(okClicked) forControlEvents:UIControlEventTouchUpInside];
        
        [panel addSubview:_ok];
        [self addSubview:panel];
        
        self.autoresizingMask = UIViewAutoresizingAll;
        
    }
    return self;
}

-(void)okClicked {
    [[THCore sharedCore] showMainScreen];
    [THSound stopMusic];
}


@end
