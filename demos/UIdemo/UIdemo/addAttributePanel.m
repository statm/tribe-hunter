//
//  addAttributePanel.m
//  UIdemo
//
//  Created by Kang Wang on 2/17/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "addAttributePanel.h"
@implementation addAttributePanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        original_hp=33; original_dmg=30;original_dfs=22;original_dog=14;
        remain =10;
        hp=original_hp;
        dmg=original_dmg;
        dfs=original_dfs;
        dog=original_dog;
//        UIImage *background = [UIImage imageNamed:@"background.jpg"];
        
        x=50.0f; y=30.0f; width=200.0f; length=260.0f;
        
        self.frame = CGRectMake(x, y, width, length);
        
        self.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background.jpg"]];
        
        self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 60.0f, 40.0f)];
        self.label1.text = @"H P";
        self.label1.textAlignment = NSTextAlignmentCenter;
        self.label1.font = [UIFont fontWithName:@"Arial" size:14];
        self.label1.backgroundColor = [UIColor redColor];
        
        self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 60.0f, 60.0f, 40.0f)];
        self.label2.text = @"Damage";
        self.label2.textAlignment = NSTextAlignmentCenter;
        self.label2.font = [UIFont fontWithName:@"Arial" size:14];
        self.label2.backgroundColor = [UIColor purpleColor];
        
        self.label3 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 60.0f, 40.0f)];
        self.label3.text = @"Defense";
        self.label3.textAlignment = NSTextAlignmentCenter;
        self.label3.font = [UIFont fontWithName:@"Arial" size:14];
        self.label3.backgroundColor = [UIColor greenColor];
        
        self.label4 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.0f, 60.0f, 40.0f)];
        self.label4.text = @"Dodge";
        self.label4.textAlignment = NSTextAlignmentCenter;
        self.label4.font = [UIFont fontWithName:@"Arial" size:14];
        self.label4.backgroundColor = [UIColor yellowColor];
        
        self.label11 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 10.0f, 30.0f, 40.0f)];
        self.label11.text = [NSString stringWithFormat:@"%i", hp];
        self.label11.textAlignment = NSTextAlignmentCenter;
        self.label11.font = [UIFont fontWithName:@"Arial" size:14];
        
        self.label22 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 60.0f, 30.0f, 40.0f)];
        self.label22.text = @"30";
        self.label22.textAlignment = NSTextAlignmentCenter;
        self.label22.font = [UIFont fontWithName:@"Arial" size:14];
        
        self.label33 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 110.0f, 30.0f, 40.0f)];
        self.label33.text = @"22";
        self.label33.textAlignment = NSTextAlignmentCenter;
        self.label33.font = [UIFont fontWithName:@"Arial" size:14];
        
        self.label44 = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 160.0f, 30.0f, 40.0f)];
        self.label44.text = @"14";
        self.label44.textAlignment = NSTextAlignmentCenter;
        self.label44.font = [UIFont fontWithName:@"Arial" size:14];
        
        self.add1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.add1 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
        self.add1.frame = CGRectMake(140.0f, 10.0f, 30.0f, 30.0f);
        [self.add1 addTarget:self action:@selector(add1click) forControlEvents:UIControlEventTouchUpInside];
        
        self.add2 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.add2.frame = CGRectMake(140.0f, 60.0f, 30.0f, 30.0f);
        [self.add2 addTarget:self action:@selector(add2click) forControlEvents:UIControlEventTouchUpInside];
        [self.add2 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
        
        self.add3 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.add3.frame = CGRectMake(140.0f, 110.0f, 30.0f, 30.0f);
        [self.add3 addTarget:self action:@selector(add3click) forControlEvents:UIControlEventTouchUpInside];
        [self.add3 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
        
        self.add4 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.add4.frame = CGRectMake(140.0f, 160.0f, 30.0f, 30.0f);
        [self.add4 addTarget:self action:@selector(add4click) forControlEvents:UIControlEventTouchUpInside];
        [self.add4 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
        
        self.reset = [UIButton buttonWithType:UIButtonTypeCustom];
        self.reset.frame = CGRectMake(10.0f, 210.0f, 80.0f, 40.0f);
        [self.reset addTarget:self action:@selector(resetclick) forControlEvents:UIControlEventTouchUpInside];
        [self.reset setBackgroundImage:[UIImage imageNamed:@"reset.png"] forState:UIControlStateNormal];
        
        self.submit = [UIButton buttonWithType:UIButtonTypeCustom];
        self.submit.frame = CGRectMake(110.0f, 210.0f, 80.0f, 40.0f);
        [self.submit addTarget:self action:@selector(submitclick) forControlEvents:UIControlEventTouchUpInside];
        [self.submit setBackgroundImage:[UIImage imageNamed:@"submit.png"] forState:UIControlStateNormal];
        
        [self addSubview:self.add1];
        [self addSubview:self.add2];
        [self addSubview:self.add3];
        [self addSubview:self.add4];
        [self addSubview:self.label1];
        [self addSubview:self.label2];
        [self addSubview:self.label3];
        [self addSubview:self.label4];
        [self addSubview:self.label11];
        [self addSubview:self.label22];
        [self addSubview:self.label33];
        [self addSubview:self.label44];
        [self addSubview:self.reset];
        [self addSubview:self.submit];

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


-(void) unenableButton{
    [_add1 setEnabled:NO];
    [_add2 setEnabled:NO];
    [_add3 setEnabled:NO];
    [_add4 setEnabled:NO];
}

-(void) enableButton{
    [_add1 setEnabled:YES];
    [_add2 setEnabled:YES];
    [_add3 setEnabled:YES];
    [_add4 setEnabled:YES];
}

-(void) add1click{
    
    if(remain==0){
        [self unenableButton];
    }
    else{
        NSLog(@"add1!");
        hp++;
        remain--;
        NSLog(@"%i",hp);
        NSLog(@"%i",remain);
        self.label11.text = [NSString stringWithFormat:@"%i", hp];
    }
    
}

-(void) add2click{
    if(remain==0){
        [self unenableButton];
    }
    else{
        NSLog(@"add2!");
        dmg++;
        remain--;
        NSLog(@"%i",dmg);
        self.label22.text = [NSString stringWithFormat:@"%i", dmg];
    }
}

-(void) add3click{
    if(remain==0){
        [self unenableButton];
    }
    else{
        NSLog(@"add3!");
        dfs++;
        remain--;
        NSLog(@"%i",dfs);
        self.label33.text = [NSString stringWithFormat:@"%i", dfs];
    }
}

-(void) add4click{
    if(remain==0){
        [self unenableButton];
    }
    else{
        NSLog(@"add4!");
        dog++;
        remain--;
        NSLog(@"%i",dog);
        self.label44.text = [NSString stringWithFormat:@"%i", dog];
    }
}

-(void) resetclick{
    NSLog(@"reset!");
    [self enableButton];
    remain=10;
    hp=original_hp;
    dmg=original_dmg;
    dfs=original_dfs;
    dog=original_dog;
    self.label11.text = [NSString stringWithFormat:@"%i", hp];
    self.label22.text = [NSString stringWithFormat:@"%i", dmg];
    self.label33.text = [NSString stringWithFormat:@"%i", dfs];
    self.label44.text = [NSString stringWithFormat:@"%i", dog];
}

-(void) submitclick{
    NSLog(@"submit!");
    NSLog(@"HP: %i", hp);
    NSLog(@"Dmg: %i", dmg);
    NSLog(@"Dfs: %i", dfs);
    NSLog(@"Dog: %i", dog);
    
}

@end
