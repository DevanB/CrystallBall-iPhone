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

#pragma mark - Prediction

- (void) makePrediction {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

#pragma mark - Motion Events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion canceled");
}

#pragma mark - Touches Events

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches canceled");
}

@end
