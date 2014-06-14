//
//  THWelcomeScreen.m
//  TribeHunter
//
//  Created by Kang Wang on 2/21/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "Macros.h"
#import "THWelcomeScreen.h"
#import "THCore.h"

// -----------------------------------------------------------------------
#pragma mark - THWelcomeScreen
// -----------------------------------------------------------------------

@implementation THWelcomeScreen {
    UIButton *_start, *_setting, *_about;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)clickedStartButton{
    [[THCore sharedCore] showMainScreen];
}

- (void)clickedSettingButton{
}

- (void)clickedAboutButton{
}

- (void)initUI {
    self.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    _start = [UIButton buttonWithType:UIButtonTypeCustom];
    [_start setBackgroundImage:[UIImage imageNamed:@"start.png"] forState:UIControlStateNormal];
    _start.frame = CGRectMake(450.0f, 20.0f, 100.0f, 50.0f);
    [_start addTarget:self action:@selector(clickedStartButton) forControlEvents:UIControlEventTouchUpInside];
    
    _setting = [UIButton buttonWithType:UIButtonTypeCustom];
    [_setting setBackgroundImage:[UIImage imageNamed:@"settings.png"] forState:UIControlStateNormal];
    _setting.frame = CGRectMake(450.0f, 80.0f, 100.0f, 50.0f);
    [_setting addTarget:self action:@selector(clickedSettingButton) forControlEvents:UIControlEventTouchUpInside];
    
    _about = [UIButton buttonWithType:UIButtonTypeCustom];
    [_about setBackgroundImage:[UIImage imageNamed:@"about.png"] forState:UIControlStateNormal];
    _about.frame = CGRectMake(450.0f, 140.0f, 100.0f, 50.0f);
    [_about addTarget:self action:@selector(clickedAboutButton) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:_start];
    [self addSubview:_setting];
    [self addSubview:_about];
}

@end


// -----------------------------------------------------------------------
#pragma mark - THWelcomeScreenController
// -----------------------------------------------------------------------

@implementation THWelcomeScreenController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setView:[[THWelcomeScreen alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
