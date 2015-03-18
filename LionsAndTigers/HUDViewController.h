//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>


@end

@interface HUDViewController : UIViewController

@property id<HUDDelegate>root;

-(void)lionButtonTappped:(UIButton *)button;

-(void) tigerButtonTapped:(UIButton *)button;


@end
