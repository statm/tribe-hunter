//
//  addAttributePanel.h
//  UIdemo
//
//  Created by Kang Wang on 2/17/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addAttributePanel : UIView{
    int hp, dmg, dfs, dog;
    int original_hp, original_dmg, original_dfs, original_dog;
    int remain;
    float x ,y, width, length;
}
@property (nonatomic, strong) UILabel *label1, *label2, *label3, *label4, *label11, *label22, *label33, *label44;
@property (nonatomic, strong) UIButton* add1, *add2, *add3, *add4, *reset, *submit;
@end
