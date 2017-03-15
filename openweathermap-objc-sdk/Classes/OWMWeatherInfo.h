//
//  OWMWeather.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@protocol OWMWeatherInfo
@end

/**
 Weather condition info model
 */
@interface OWMWeatherInfo : OWMBaseModel

/**
 Weather condition id
 */
@property (assign, nonatomic) NSUInteger weatherInfoID;

/**
 Group of weather parameters (Rain, Snow, Extreme etc.)
 */
@property (strong, nonatomic) NSString *main;

/**
 Weather condition within the group
 */
@property (strong, nonatomic) NSString *weatherDescription;

/**
 Weather icon id
 */
@property (strong, nonatomic) NSString *icon;

@end
