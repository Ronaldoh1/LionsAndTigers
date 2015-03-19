//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "HUDViewController.h"


@interface HUDViewController ()


@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = true;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onLionButtonTapped:(UIButton *)sender
{
    
    NSLog(@"lion tapped");
}


- (IBAction)onTIgerButtonTapped:(UIButton *)sender
{
   [self.root tigerButtonTapped:sender];
    NSLog(@"tiger tapped");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
