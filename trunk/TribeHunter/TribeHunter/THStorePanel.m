//
//  THStorePanel.m
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THStorePanel.h"
#import "THCore.h"

@implementation THStorePanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        num = 0;
        
        UIImageView* _itemImage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 64.0f, 64.0f)];
        [_itemImage setImage:[UIImage imageNamed:@"addHP.jpg"]];
        
        _addItem = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addItem setBackgroundImage:[UIImage imageNamed:@"upbtn.png"] forState:UIControlStateNormal];
        _addItem.frame = CGRectMake(94.0f, 42.0f, 30.0f, 30.0f);
        [_addItem addTarget:self action:@selector(addClicked:) forControlEvents:UIControlEventTouchUpInside];
        _addItem.enabled = true;
        
        _labelNum = [[UILabel alloc] initWithFrame:CGRectMake(135.0f, 40.0f, 30.0f, 30.0f)];
        _labelNum.text = @"0";
        _labelNum.textAlignment = NSTextAlignmentCenter;
        _labelNum.font = [UIFont fontWithName:@"Arial" size:14];
        [_labelNum setTextColor:[UIColor yellowColor]];
     //   _labelNum.backgroundColor = [UIColor yellowColor];
        
        _minusItem = [UIButton buttonWithType:UIButtonTypeCustom];
        [_minusItem setBackgroundImage:[UIImage imageNamed:@"downbtn.png"] forState:UIControlStateNormal];
        _minusItem.frame = CGRectMake(175.0f, 42.0f, 30.0f, 30.0f);
        [_minusItem addTarget:self action:@selector(minusClicked:) forControlEvents:UIControlEventTouchUpInside];
        _minusItem.enabled = true;
        
        _labelVal = [[UILabel alloc] initWithFrame:CGRectMake(205.0f, 40.0f, 50.0f, 30.0f)];
        _labelVal.text = @"2000";
        _labelVal.textAlignment = NSTextAlignmentCenter;
        _labelVal.font = [UIFont fontWithName:@"Arial" size:14 ];
        [_labelVal setTextColor:[UIColor yellowColor]];
     //   _labelVal.backgroundColor = [UIColor yellowColor];
        
        _buyItem = [UIButton buttonWithType:UIButtonTypeCustom];
        [_buyItem setBackgroundImage:[UIImage imageNamed:@"buy.png"] forState:UIControlStateNormal];
        _buyItem.frame = CGRectMake(265.0f, 42.0f, 50.0f, 30.0f);
        [_buyItem addTarget:self action:@selector(buyClicked:) forControlEvents:UIControlEventTouchUpInside];
        _buyItem.enabled = true;
        
        [self addSubview:_itemImage];
        [self addSubview:_addItem];
        [self addSubview:_labelNum];
        [self addSubview:_minusItem];
        [self addSubview:_labelVal];
        [self addSubview:_buyItem];
        
    }
    return self;
}

-(void)addClicked:(id) sender{
//    NSLog(@"~~~~");
    [self updateButton];
    if (_addItem.enabled) {
        num ++;
        int tmpVal = [[THCore sharedCore] getMoneyVal] - num*50;
   //     _labelNum.text = num;
        _labelNum.text = [NSString stringWithFormat:@"%i", num];
        _labelVal.text = [NSString stringWithFormat:@"%i", tmpVal];
        
    }
    [self updateButton];
}

-(void)minusClicked:(id) sender{
    if(num == 0)
        return ;
    [self updateButton];
    if (_minusItem.enabled) {
        num --;
        int tmpVal = [[THCore sharedCore] getMoneyVal] - num*50;
        _labelNum.text = [NSString stringWithFormat:@"%i", num];
        _labelVal.text = [NSString stringWithFormat:@"%i", tmpVal];
    }
    [self updateButton];
}

-(void)buyClicked:(id) sender{
    [self updateButton];
    if (_buyItem.enabled) {
        for(int i = 0; i < num; i ++)
            [[THCore sharedCore] buy];
        num = 0;
        int tmpVal = [[THCore sharedCore] getMoneyVal] - num*50;
        _labelNum.text = [NSString stringWithFormat:@"%i", num];
        _labelVal.text = [NSString stringWithFormat:@"%i", tmpVal];
    }
    [self updateButton];
}

-(void)updateButton {
    int val = [[THCore sharedCore] getMoneyVal];
    NSLog(@"1 - %i",val);
    NSLog(@"2 - %i",num);
    NSLog(@"3 - %i",num*50);
    if(val < 50 || num*50 > val || num < 0){
        _addItem.enabled = false;
        _minusItem.enabled = false;
        _buyItem.enabled = false;
    }else{
        _addItem.enabled = true;
        _minusItem.enabled = true;
        _buyItem.enabled = true;
    }
    if(num < 0)
        num = 0;
}


@end
