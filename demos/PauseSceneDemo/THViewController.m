//
//  THViewController.m
//  Pause
//
//  Created by Student on 3/1/14.
//  Copyright (c) 2014 diy. All rights reserved.
//

#import "THViewController.h"
#import "THPause.h"

@interface THViewController ()

@end

@implementation THViewController

//-(id) initWithNibName: (NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.view addSubview:[[THPause alloc] initWithFrame:CGRectMake(0, 0, 340, 340)]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
