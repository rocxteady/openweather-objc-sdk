//
//  OWMWeather.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseResult.h"
#import "OWMCoordinates.h"
#import "OWMWeatherInfo.h"
#import "OWMMain.h"
#import "OWMWind.h"
#import "OWMClouds.h"
#import "OWMSys.h"
#import "OWMRain.h"
#import "OWMSnow.h"

@protocol OWMWeather
@end

/**
 Weather data model for the current weather API
 */
@interface OWMWeather : OWMBaseResult

/**
 Coordinates of the related ciyu
 */
@property (strong, nonatomic) OWMCoordinates *coordinates;

/**
 Weather condition codes and infos
 */
@property (strong, nonatomic) NSArray <OWMWeatherInfo> *weatherInfos;
@property (strong, nonatomic) NSString *base;

/**
 Main weather parameters
 */
@property (strong, nonatomic) OWMMain *main;

/**
 Visibility, meter
 */
@property (assign, nonatomic) NSUInteger visibility;

/**
 Wind model. More info: OWMWind
 */
@property (strong, nonatomic) OWMWind *wind;

/**
 Clouds model. Cloudiness, %. More info: OWMClouds
 */
@property (strong, nonatomic) OWMClouds *clouds;

/**
 Rain model. Rain volume for the last 3 hours. More info: OWMRain.
 */
@property (strong, nonatomic) OWMRain *rain;
/**
 Snow model. Snow volume for the last 3 hours. More info: OWMSnow.
 */
@property (strong, nonatomic) OWMSnow *snow;

/**
 Time of data calculation, unix, UTC
 */
@property (assign, nonatomic) double dataTime;
@property (strong, nonatomic) OWMSys *sys;

/**
 City ID
 */
@property (assign, nonatomic) NSUInteger cityID;
@property (strong, nonatomic) NSString *cityName;

@end
