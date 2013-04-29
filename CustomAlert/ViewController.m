//
//  ViewController.m
//  CustomAlert
//
//  Created by Mariya Kholod on 4/23/13.
//  Copyright (c) 2013 Mariya Kholod. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)customAlertView:(CustomAlert*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        //Gray
        self.view.backgroundColor = [UIColor lightGrayColor];
    }
    else if (buttonIndex == 1)
    {
        //White
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

- (void)onAlertBtnPressed
{
    CustomAlert *alert = [[CustomAlert alloc] initWithTitle:@"Warning" message:@"Set background color:" delegate:self cancelButtonTitle:@"Gray" otherButtonTitle:@"White"];
    [alert showInView:self.view];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIButton *AlertBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    AlertBtn.frame = CGRectMake((int)((self.view.frame.size.width-200.0)/2.0), 120.0, 200.0, 50.0);
    [AlertBtn setTitle:@"Show Alert" forState:UIControlStateNormal];
    [AlertBtn addTarget:self action:@selector(onAlertBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:AlertBtn];
    AlertBtn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
