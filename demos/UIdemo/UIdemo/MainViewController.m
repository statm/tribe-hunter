//
//  MainViewController.m
//  UIdemo
//
//  Created by Kang Wang on 2/16/14.
//  Copyright (c) 2014 Kang Wang. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController (){
}


@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
//    [self.view addSubview: [[addAttributePanel alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
//     [self.view addSubview: [[WelcomePanel alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
//    [self.view addSubview: [[MainScreenPanel alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [self.view addSubview: [[THFightPanel alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||
            interfaceOrientation==UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
