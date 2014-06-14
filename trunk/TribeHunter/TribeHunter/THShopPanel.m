//
//  THShopPanel.m
//  TribeHunter
//
//  Created by Student on 4/21/14.
//  Copyright (c) 2014 TH-Team. All rights reserved.
//

#import "THShopPanel.h"
#import "Macros.h"
#import "THCore.h"
#import "THMoney.h"

@implementation THShopPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithWhite:1. alpha:.4];
        
        UIView *controller = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 200)];
        controller.backgroundColor = [UIColor whiteColor];
        controller.center = CGPointMake(frame.size.height / 2, frame.size.width / 2);
        controller.layer.borderColor = [UIColor redColor].CGColor;
        controller.layer.borderWidth = 3.0f;
        
        _addHP = [UIButton buttonWithType:UIButtonTypeCustom];
        _addHP.frame = CGRectMake(20, 10, 80, 80);
        [_addHP setImage:[UIImage imageNamed:@"addHP.jpg"] forState:UIControlStateNormal];
        [_addHP addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_addHP];
        
        int val = [[THCore sharedCore] getItemNum];
        _labelNum = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 110.0f, 30.0f, 30.0f)];
        _labelNum.text = [NSString stringWithFormat:@"%i", val];
        _labelNum.textAlignment = NSTextAlignmentCenter;
        _labelNum.font = [UIFont fontWithName:@"Arial" size:20];
        [_labelNum setTextColor:[UIColor redColor]];
        [controller addSubview:_labelNum];
        
        _quit = [UIButton buttonWithType:UIButtonTypeCustom];
        _quit.frame = CGRectMake(20, 160, 80, 20);
        [_quit setImage:[UIImage imageNamed:@"closebtn.png"] forState:UIControlStateNormal];
        [_quit addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [controller addSubview:_quit];
        
        [self addSubview:controller];
        self.autoresizingMask = UIViewAutoresizingAll;
    }
    return self;
}

-(void) buttonClicked:(id) sender{
    UIButton *button = (UIButton *)sender;
    if (button == _addHP) {
        [[[THCore sharedCore] game] use];
        int val = [[THCore sharedCore] getItemNum];
        _labelNum.text = [NSString stringWithFormat:@"%i", val];
    }
    else{
        [[[THCore sharedCore] game] leaveShop];
    }
}


@end
