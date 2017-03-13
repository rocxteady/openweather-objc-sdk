//
//  OWMMain.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

/**
 Main weather parameters
 */
@interface OWMMain : OWMBaseModel


/**
 Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit
 */
@property (assign, nonatomic) double temp;

/**
 Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
 */
@property (assign, nonatomic) double pressure;

/**
 Atmospheric pressure on the sea level, hPa
 */
@property (assign, nonatomic) double seaLevelPressure;

/**
 Atmospheric pressure on the ground level, hPa
 */
@property (assign, nonatomic) double groundLevelPressure;

/**
 Humidity, %
 */
@property (assign, nonatomic) double humidity;

/**
 Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double tempMin;

/**
 Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
 */
@property (assign, nonatomic) double tempMax;

@end
