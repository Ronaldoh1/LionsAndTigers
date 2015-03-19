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

@property (nonatomic) NSMutableArray *lionsArray;
@property (nonatomic) NSMutableArray *tigersArray;

@property (nonatomic) NSMutableArray *photosArray;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionsView;

@end


@implementation TopViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //need to allocate allocate the space for the photos array that will be used to display in each cell.
    self.photosArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"lion1" ],[UIImage imageNamed:@"lion2" ],[UIImage imageNamed:@"lion3" ], nil];

    //need to create and add photos to the photo holder's arrays.
    self.lionsArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"lion1" ],[UIImage imageNamed:@"lion2" ],[UIImage imageNamed:@"lion3" ], nil];

    self.tigersArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"tiger1" ],[UIImage imageNamed:@"tiger1" ],[UIImage imageNamed:@"tiger3" ], nil];




}

-(void)selectLions{

    self.photosArray = self.lionsArray;
    [self.collectionsView reloadData];



}
-(void)selectTigers{
   self.photosArray = self.tigersArray;
   [self.collectionsView reloadData];

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
