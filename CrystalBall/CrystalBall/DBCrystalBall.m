//
//  DBCrystalBall.m
//  CrystalBall
//
//  Created by Devan Beitel on 1/25/14.
//  Copyright (c) 2014 Devan Beitel. All rights reserved.
//

#import "DBCrystalBall.h"

@implementation DBCrystalBall

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly so", @"All signs say YES", @"The stars are not aligned", @"My reply is no", @"It is doubtful", @"Better not tell you now", @"Concentrate and ask again", @"Unable to answer now", nil];
    }
    return _predictions;
}

- (NSString*)randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end
