//
//  ViewController.h
//  DiceRoll
//
//  Created by Cenny Davidsson on 2015-09-02.
//  Copyright (c) 2015 Linköpings University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *dieOne;
@property (weak, nonatomic) IBOutlet UIImageView *dieTwo;
@property (weak, nonatomic) IBOutlet UIImageView *dieThree;
@property (weak, nonatomic) IBOutlet UIImageView *dieFour;
@property (weak, nonatomic) IBOutlet UIImageView *dieFive;
@property (weak, nonatomic) IBOutlet UILabel *latestTenThrows;

@property (nonatomic) NSUInteger dieValue;

@end

