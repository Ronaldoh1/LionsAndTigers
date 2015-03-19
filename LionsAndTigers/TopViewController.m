//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (IBAction)topRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.root topRevealButtonTapped:sender];
}

@end
