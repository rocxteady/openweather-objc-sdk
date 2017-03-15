//
//  OWMTemperature.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseModel.h"

@interface OWMTemperature : OWMBaseModel

/**
 Day temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double day;

/**
 Min daily temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double min;

/**
 Max daily temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double max;

/**
 Night temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double night;

/**
 Evening temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double evening;

/**
 Morning temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double morning;

@end
