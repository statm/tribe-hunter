//
//  MainScreenPanel.m
//  UIdemo
//
//  Created by Kang Wang on 2/28/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "MainScreenPanel.h"
#import "MapPanel.h"
#import "MasteryPanel.h"
#import "StorePanel.h"
#import "OtherPanel.h"

@implementation MainScreenPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        // Initialization code
        
        //#Sub Views
        self.map_view = [[MapPanel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 568.0f, 240.0f)];
        self.mastery_view = [[MasteryPanel alloc]initWithFrame:CGRectMake(0.0f, 80.0f, 568.0f, 240.0f)];
        self.store_view = [[StorePanel alloc]initWithFrame:CGRectMake(0.0f, 80.0f, 568.0f, 240.0f)];
        self.other_view = [[OtherPanel alloc]initWithFrame:CGRectMake(0.0f, 80.0f, 568.0f, 240.0f)];
        
        //#Map Panel Button
        self.map = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.map setBackgroundImage:[UIImage imageNamed:@"StartButton.png"] forState:UIControlStateNormal];
        [self.map setBackgroundImage:[UIImage imageNamed:@"reset.png"] forState:UIControlStateSelected];
        self.map.frame = CGRectMake(0.0f, 40.0f, 142.0f, 40.0f);
        [self.map addTarget:self action:@selector(clickedMapButton) forControlEvents:UIControlEventTouchUpInside];
        
        //#Mastery Panel Button
        self.mastery = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.mastery setBackgroundImage:[UIImage imageNamed:@"StartButton.png"] forState:UIControlStateNormal];
        [self.mastery setBackgroundImage:[UIImage imageNamed:@"reset.png"] forState:UIControlStateSelected];
        self.mastery.frame = CGRectMake(142.0f, 40.0f, 142.0f, 40.0f);
        [self.mastery addTarget:self action:@selector(clickedMasteryButton) forControlEvents:UIControlEventTouchUpInside];
        
        //#Store Panel Button
        self.store = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.store setBackgroundImage:[UIImage imageNamed:@"StartButton.png"] forState:UIControlStateNormal];
        [self.store setBackgroundImage:[UIImage imageNamed:@"reset.png"] forState:UIControlStateSelected];
        self.store.frame = CGRectMake(284.0f, 40.0f, 142.0f, 40.0f);
        [self.store addTarget:self action:@selector(clickedStoreButton) forControlEvents:UIControlEventTouchUpInside];
        
        //#Other Panel Button
        self.other = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.other setBackgroundImage:[UIImage imageNamed:@"StartButton.png"] forState:UIControlStateNormal];
        [self.other setBackgroundImage:[UIImage imageNamed:@"reset.png"] forState:UIControlStateSelected];
//        self.other.frame = CGRectMake(0.0f, 40.0f, 142.0f, 40.0f);
        self.other.frame = CGRectMake(426.0f, 40.0f, 142.0f, 40.0f);
        [self.other addTarget:self action:@selector(clickedOtherButton) forControlEvents:UIControlEventTouchUpInside];
        
        [self.map setSelected:YES];
        [self addSubview:self.map_view];
        [self addSubview:self.map];
        [self addSubview:self.mastery];
        [self addSubview:self.store];
        [self addSubview:self.other];
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


-(void)unsetState{
    [self.map setSelected:NO];
    [self.mastery setSelected:NO];
    [self.store setSelected:NO];
    [self.other setSelected:NO];
}

-(void)enableButtonState{
    [self.map setEnabled:YES];
    [self.mastery setEnabled:YES];
    [self.store setEnabled:YES];
    [self.other setEnabled:YES];
}

-(void)removeSubPanel{
    [self.map_view removeFromSuperview];
    [self.mastery_view removeFromSuperview];
    [self.store_view removeFromSuperview];
    [self.other_view removeFromSuperview];
}

-(void)clickedMapButton{
    NSLog(@"button Map");
    [self unsetState];
    [self removeSubPanel];
    [self.map setSelected:YES];
    [self addSubview:self.map_view];
}

-(void)clickedMasteryButton{
    NSLog(@"button Mastery");
    [self unsetState];
    [self removeSubPanel];
    [self.mastery setSelected:YES];
    [self addSubview:self.mastery_view];
}

-(void)clickedStoreButton{
    NSLog(@"button Store");
    [self unsetState];
    [self removeSubPanel];
    [self.store setSelected:YES];
    [self addSubview:self.store_view];
}

-(void)clickedOtherButton{
    NSLog(@"button Other");
    [self unsetState];
    [self removeSubPanel];
    [self.other setSelected:YES];
    [self addSubview:self.other_view];
}
@end
