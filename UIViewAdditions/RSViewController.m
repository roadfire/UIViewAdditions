//
//  RSViewController.m
//  UIViewAdditions
//
//  Created by Josh Brown on 8/2/12.
//  Copyright (c) 2012 Roadfire Software. All rights reserved.
//

#import "RSViewController.h"
#import "UIView+RSAdditions.h"

@interface RSViewController ()

@end

@implementation RSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *blackBox = [[UIView alloc] init];
    blackBox.backgroundColor = [UIColor blackColor];
    blackBox.width = 40;
    blackBox.height = 40;
    [self.view addSubview:blackBox];
    
    UIView *whiteBox = [[UIView alloc] init];
    whiteBox.backgroundColor = [UIColor whiteColor];
    whiteBox.width = 80;
    whiteBox.height = 80;
    whiteBox.left = blackBox.right;
    [self.view addSubview:whiteBox];
    
    UIView *redBox = [[UIView alloc] init];
    redBox.backgroundColor = [UIColor redColor];
    redBox.width = 40;
    redBox.height = 40;
    redBox.right = whiteBox.right;
    redBox.top = whiteBox.bottom;
    [self.view addSubview:redBox];
    
    UIView *yellowBox = [[UIView alloc] init];
    yellowBox.backgroundColor = [UIColor yellowColor];
    yellowBox.height = whiteBox.height;
    yellowBox.width = whiteBox.width;
    yellowBox.bottom = redBox.bottom;
    yellowBox.left = redBox.right;
    [self.view addSubview:yellowBox];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
