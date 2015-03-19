//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController ()  <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic) NSMutableArray *photosArray;

@end


@implementation TopViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *photosArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"lion1@2x" ],[UIImage imageNamed:@"lion2@2x" ],[UIImage imageNamed:@"lion3@2x" ],[UIImage imageNamed:@"tiger1@2x" ],[UIImage imageNamed:@"tiger1@2x" ],[UIImage imageNamed:@"tiger3@2x" ], nil];

    //.lionsSelected = false;


}

- (IBAction)topRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.root topRevealButtonTapped:sender];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];



        cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];



    // Configure the cell
   // cell.textLabel.text = [NSString stringWithFormat:@"%li", (long)indexPath.row];


   return cell;
}




@end
