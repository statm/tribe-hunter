//
//  THStorePanel.h
//  TribeHunter
//
//  Created by Kang Wang on 3/1/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface THStorePanel : UIView{
    int num;
}

@property UIButton* addItem, *minusItem, *buyItem;
@property UILabel* labelNum, *labelVal;

@end
