//
//  OWMWind.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMWind : OWMBaseModel

/**
 Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
 */
@property (assign, nonatomic) double speed;

/**
 Wind direction, degrees (meteorological)
 */
@property (assign, nonatomic) NSUInteger direction;

@end
