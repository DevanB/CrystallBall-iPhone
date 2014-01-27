//
//  DBViewController.h
//  CrystalBall
//
//  Created by Devan Beitel on 1/25/14.
//  Copyright (c) 2014 Devan Beitel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DBCrystalBall;

@interface DBViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) DBCrystalBall *crystalBall;

- (IBAction)buttonPressed;

@end
