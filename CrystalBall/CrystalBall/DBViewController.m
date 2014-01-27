//
//  DBViewController.m
//  CrystalBall
//
//  Created by Devan Beitel on 1/25/14.
//  Copyright (c) 2014 Devan Beitel. All rights reserved.
//

#import "DBViewController.h"
#import "DBCrystalBall.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.crystalBall = [[DBCrystalBall alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

@end
