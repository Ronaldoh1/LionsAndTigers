//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate, HUDDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *toprRightConstraint;

@property (nonatomic) BOOL isActive;
@property HUDViewController *hud;
@property TopViewController *top;
@property (nonatomic) NSMutableArray *photosArray;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.top.view.backgroundColor = [UIColor redColor];
    self.isActive = false;

    //NSMutableArray *photosArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"lion1@2x" ],[UIImage imageNamed:@"lion2@2x" ],[UIImage imageNamed:@"lion3@2x" ],[UIImage imageNamed:@"tiger1@2x" ],[UIImage imageNamed:@"tiger1@2x" ],[UIImage imageNamed:@"tiger3@2x" ], nil];

}

-(void)topRevealButtonTapped:(UIBarButtonItem *)button
{
    if (self.isActive == false)
    {
        self.isActive = true;
        self.topLeftConstraint.constant = 70.0;
    } else
    {
        self.isActive = false;
        self.topLeftConstraint.constant = -16.0;
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // ask segue for next controller
    // all your attached views are in nav controllers, so when ask segue for it, it will give us a nav
    UINavigationController *nav = segue.destinationViewController;

    // your nav controller has an array of all view controller connected to, in order
    UIViewController *vc = nav.viewControllers[0];

    // we need to see which view controller we have
    // then we will be able to access their properties
    if ([vc isKindOfClass:[TopViewController class]]){

        TopViewController *topVC = (TopViewController *)vc;
        self.top = topVC;
        topVC.root = self;

    } else {

        HUDViewController *hudVC = (HUDViewController *)vc;
        self.hud = hudVC;
        hudVC.root = self;

    }

}


//-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
//    return 3;
//}


//-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//
//   // UICollectionViewCell *cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell1" forIndexPath:indexPath];
//  //  UIImage *image = [self.photosArray objectAtIndex:indexPath.row];
//
//   // cell1.backgroundView = [[UIImage alloc] initwith:[self.photosArray objectAtIndex:indexPath.row]];
//
//}



@end
