//
//  THPause.m
//  Pause
//
//  Created by Student on 3/1/14.
//  Copyright 2014 diy. All rights reserved.
//

#import "THPause.h"


@implementation THPause

@synthesize resume = _resume;
@synthesize quit = _quit;

-(id) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        
        UIView *controller = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
        controller.backgroundColor = [UIColor whiteColor];
        controller.center = self.center;
        controller.layer.borderColor = [UIColor redColor].CGColor;
        controller.layer.borderWidth = 3.0f;
       
        _resume = [UIButton buttonWithType:UIButtonTypeCustom];
        _resume.frame = CGRectMake(20, 10, 80, 40);
        UIImage *resumeImage = [UIImage imageNamed:@"resume.jpeg"];
        [_resume setImage:resumeImage forState:UIControlStateNormal];
        [_resume addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_resume];
        
        _quit = [UIButton buttonWithType:UIButtonTypeCustom];
        _quit.frame = CGRectMake(20, 70, 80, 40);
        UIImage *quitImage = [UIImage imageNamed:@"quit.png"];
        [_quit setImage:quitImage forState:UIControlStateNormal];
        [_quit addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_quit];
        
        [self addSubview:controller];
        
    }
    return self;
}

-(void) buttonClicked:(id) sender{
    UIButton *button = (UIButton *)sender;
    if (button == _resume) {
        NSLog(@"USER WANTS TO RESUME");
    }
    else{
        NSLog(@"USER WANTS TO QUIT CURRENT GAME");
    }
}
@end
