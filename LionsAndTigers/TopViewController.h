//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Ronald Hernandez on 3/18/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol TopDelegate <NSObject>

-(void) topRevealButtonTapped: (UIBarButtonItem *)button;


@end
@interface TopViewController : UIViewController

@property id<TopDelegate> delegate;


@end
