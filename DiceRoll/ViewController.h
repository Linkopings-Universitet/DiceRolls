//
//  ViewController.h
//  DiceRoll
//
//  Created by Alek Åström on 2012-01-19.
//  Edited by Cenny Davidsson 2014-01-15.
//  Copyright (c) 2012 Linköping University. All rights reserved.
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