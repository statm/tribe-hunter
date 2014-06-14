//
//  THGamePausePanel.m
//  TribeHunter
//
//  Created by Student on 3/2/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THGamePausePanel.h"
#import "Macros.h"
#import "THCore.h"

@implementation THGamePausePanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:1. alpha:.4];
        
        UIView *controller = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
        controller.backgroundColor = [UIColor whiteColor];
        controller.center = CGPointMake(frame.size.height / 2, frame.size.width / 2);
        controller.layer.borderColor = [UIColor redColor].CGColor;
        controller.layer.borderWidth = 3.0f;
        
        _resume = [UIButton buttonWithType:UIButtonTypeCustom];
        _resume.frame = CGRectMake(20, 10, 80, 40);
        UIImage *resumeImage = [UIImage imageNamed:@"resumebtn.png"];
        [_resume setImage:resumeImage forState:UIControlStateNormal];
        [_resume addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_resume];
        
        _quit = [UIButton buttonWithType:UIButtonTypeCustom];
        _quit.frame = CGRectMake(20, 70, 80, 40);
        UIImage *quitImage = [UIImage imageNamed:@"backbtn.png"];
        [_quit setImage:quitImage forState:UIControlStateNormal];
        [_quit addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_quit];
        
        [self addSubview:controller];
        
        self.autoresizingMask = UIViewAutoresizingAll;
    }
    return self;
}

-(void) buttonClicked:(id) sender{
    UIButton *button = (UIButton *)sender;
    if (button == _resume) {
        [[[THCore sharedCore] game] resume];
    }
    else{
        [[THCore sharedCore] showMainScreen];
    }
}


@end
