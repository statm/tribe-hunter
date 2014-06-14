//
//  THFightPanel.m
//  UIdemo
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THFightPanel.h"

@implementation THFightPanel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        //#Player picture
        self.player_photo = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 60.0f, 50.0f)];
        [self.player_photo setImage:[UIImage imageNamed:@"plus.png"]];
        
        //#Pause Button
        self.pause = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.pause setBackgroundImage:[UIImage imageNamed:@"pause.png"] forState:UIControlStateNormal];
        self.pause.frame = CGRectMake(0.0f, 538.0f, 60.0f, 50.0f);
//        self.pause.frame = CGRectMake(0.0f, 0.0f, 60.0f, 50.0f);
        [self.pause addTarget:self action:@selector(clickedPauseButton) forControlEvents:UIControlEventTouchUpInside];
        
        //#HP Bar
        self.health_view = [[UIView alloc] initWithFrame:CGRectMake(60.0f, 0.0f, 448.0f, 50.0f)];
        [self.health_view setBackgroundColor:[UIColor purpleColor]];//need to be removed
        
        //#Spell View
        self.spell_view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 260.0f, 270.0f)];
        [self.spell_view setBackgroundColor:[UIColor blueColor]];//need to be removed
        
        //#Game Scene
        self.game_scene = [[UIView alloc] initWithFrame:CGRectMake(60.0f, 50.0f, 508.0f, 270.0f)];
        [self.game_scene setBackgroundColor:[UIColor yellowColor]];//need to be removed
        
        //Add SubViews
        [self addSubview:self.player_photo];
        [self addSubview:self.health_view];
        [self addSubview:self.pause];
        [self addSubview:self.spell_view];
        [self addSubview:self.game_scene];
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

-(void)clickedPauseButton{
    NSLog(@"Game Paused!");
}

@end
