//
//  WelcomePanel.m
//  UIdemo
//
//  Created by Kang Wang on 2/21/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "WelcomePanel.h"

@implementation WelcomePanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.jpg"]];
        
        self.start = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.start setBackgroundImage:[UIImage imageNamed:@"StartButton.png"] forState:UIControlStateNormal];
        self.start.frame = CGRectMake(450.0f, 20.0f, 100.0f, 50.0f);
        [self.start addTarget:self action:@selector(clickedStartButton) forControlEvents:UIControlEventTouchUpInside];
        self.setting = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.setting setBackgroundImage:[UIImage imageNamed:@"SettingButton.jpg"] forState:UIControlStateNormal];
        self.setting.frame = CGRectMake(450.0f, 80.0f, 100.0f, 50.0f);
        [self.setting addTarget:self action:@selector(clickedSettingButton) forControlEvents:UIControlEventTouchUpInside];
        self.about = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.about setBackgroundImage:[UIImage imageNamed:@"Aboutbutton.jpg"] forState:UIControlStateNormal];
        self.about.frame = CGRectMake(450.0f, 140.0f, 100.0f, 50.0f);
        [self.about addTarget:self action:@selector(clickedAboutButton) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.start];
        [self addSubview:self.setting];
        [self addSubview:self.about];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) clickedStartButton{
}

-(void) clickedSettingButton{
}

-(void) clickedAboutButton{
}
@end
