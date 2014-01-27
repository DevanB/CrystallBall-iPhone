//
//  DBCrystalBall.h
//  CrystalBall
//
//  Created by Devan Beitel on 1/25/14.
//  Copyright (c) 2014 Devan Beitel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBCrystalBall : NSObject {
    NSArray *_predictions;
}

@property (strong, nonatomic, readonly) NSArray *predictions;

- (NSString*)randomPrediction;

@end
