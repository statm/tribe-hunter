//
//  THMainScreen.m
//  TribeHunter
//
//  Created by Kang Wang on 2/28/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "THMainScreen.h"
#import "THMapPanel.h"
#import "THMonsterPanel.h"
#import "THStorePanel.h"
#import "THSkillPanel.h"
#import "THHunterPanel.h"
#import "THCore.h"

// -----------------------------------------------------------------------
#pragma mark - THMainScreen
// -----------------------------------------------------------------------

@implementation THMainScreen {
    UIButton *map, *hunter, *skill, *monster, *store;
    UIView *map_view, *skill_view, *store_view, *monster_view, *hunter_view;
    NSArray *btnArray, *panelArray;
}

- (id)initWithFrame:(CGRect)frame {
    //here did not use the frame inherited
    self = [super initWithFrame:CGRectMake(0.0f, 0.0f, 568.0f, 320.0f)];
    if (self) {
//        // Initialization code
        
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"mainpanel.png"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.backgroundColor = [UIColor colorWithPatternImage:image];
        
        //#Sub Views
        map_view = [[THMapPanel alloc] initWithFrame:CGRectMake(71.5f, 84.5f, 419.0f, 230.0f)];
        hunter_view = [[THHunterPanel alloc ] initWithFrame:CGRectMake(71.5f, 84.5f, 419.0f, 230.0f)];
        skill_view = [[THSkillPanel alloc]initWithFrame:CGRectMake(71.5f, 84.5f, 419.0f, 230.0f)];
        monster_view = [[THMonsterPanel alloc]initWithFrame:CGRectMake(71.5f, 84.5f, 419.0f, 230.0f)];
        store_view = [[THStorePanel alloc]initWithFrame:CGRectMake(71.5f, 84.5f, 419.0f, 230.0f)];
        
        //#Only set the map panel visible
        hunter_view.hidden = YES;
        skill_view.hidden = YES;
        monster_view.hidden = YES;
        store_view.hidden = YES;
        
        //#Map Panel Button
        map = [UIButton buttonWithType:UIButtonTypeCustom];
        [map setBackgroundImage:[UIImage imageNamed:@"level_btn.png"] forState:UIControlStateNormal];
        map.frame = CGRectMake(65.0f, 68.5f, 86.2f, 16.0f);
        [map addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:map];
        
        //#Mastery Panel Button
        hunter = [UIButton buttonWithType:UIButtonTypeCustom];
        [hunter setBackgroundImage:[UIImage imageNamed:@"hunter_info_btn.png"] forState:UIControlStateNormal];
        hunter.frame = CGRectMake(151.2f, 68.5f, 86.2f, 16.0f);
        [hunter addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview: hunter];
        
        //#Store Panel Button
        skill = [UIButton buttonWithType:UIButtonTypeCustom];
        [skill setBackgroundImage:[UIImage imageNamed:@"skill_info_btn.png"] forState:UIControlStateNormal];
        skill.frame = CGRectMake(237.4f, 68.5f, 86.2f, 16.0f);
        [skill addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:skill];
        
        //#Other Panel Button
        monster = [UIButton buttonWithType:UIButtonTypeCustom];
        [monster setBackgroundImage:[UIImage imageNamed:@"monster_info_btn.png"] forState:UIControlStateNormal];
        monster.frame = CGRectMake(323.6f, 68.5f, 86.2f, 16.0f);
        [monster addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:monster];
        
        store = [UIButton buttonWithType:UIButtonTypeCustom];
        [store setBackgroundImage:[UIImage imageNamed:@"shop_btn.png"] forState:UIControlStateNormal];
        store.frame = CGRectMake(409.8f, 68.5f, 86.2f, 16.0f);
        [store addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:store];
        
        [map setSelected:YES];
        [self addSubview:map_view];
        [self addSubview:hunter_view];
        [self addSubview:skill_view];
        [self addSubview:monster_view];
        [self addSubview:store_view];
        
        btnArray = [[NSArray alloc] initWithObjects:map, hunter, skill, monster, store, nil];
        panelArray = [[NSArray alloc] initWithObjects:map_view, hunter_view, skill_view, monster_view, store_view, nil];
    }
    return self;
}

-(IBAction)clickButton:(id)sender{
    UIButton* button = (UIButton *)sender;
    
    for(UIView *view in panelArray)
        view.hidden = YES;
    int index = [btnArray indexOfObject:button];
    
    UIView* panel = [panelArray objectAtIndex:index];
    panel.hidden = FALSE;
    
}

@end


// -----------------------------------------------------------------------
#pragma mark - THMainScreenController
// -----------------------------------------------------------------------

@implementation THMainScreenController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setView:[[THMainScreen alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end