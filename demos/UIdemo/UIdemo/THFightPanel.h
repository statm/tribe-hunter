//
//  THFightPanel.h
//  UIdemo
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface THFightPanel : UIView
@property (nonatomic, strong) UIView *spell_view, *game_scene,*health_view;
//@property (nonatomic, strong) UIImage *player, *pause;
@property (nonatomic, strong) UIImageView *player_photo;
@property (nonatomic, strong) UIButton *pause;
@end
