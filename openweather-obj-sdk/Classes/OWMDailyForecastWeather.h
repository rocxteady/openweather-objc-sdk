//
//  OWMDailyWeather.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseResult.h"
#import "OWMTemperature.h"
#import "OWMWeatherInfo.h"

@protocol OWMDailyForecastWeather
@end

/**
 Weather data model for the daiy forecast API
 */
@interface OWMDailyForecastWeather : OWMBaseResult

/**
 Weather condition codes and infos
 */
@property (strong, nonatomic) NSArray <OWMWeatherInfo> *weatherInfos;

/**
 Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
 */
@property (assign, nonatomic) double windSpeed;

/**
 Cloudiness by percentage
 */
@property (assign, nonatomic) NSUInteger clouds;

/**
 Rain volume
 */
@property (assign, nonatomic) double rain;

/**
 Snow volume
 */
@property (assign, nonatomic) double snow;

/**
 Time of data forecasted
 */
@property (assign, nonatomic) double dataTime;

/**
 Temperature model. (Min, max etc.)
 */
@property (strong, nonatomic) OWMTemperature *temperature;

/**
 Atmospheric pressure on the sea level, hPa
 */
@property (assign, nonatomic) double pressure;

/**
 Humidity by percentage
 */
@property (assign, nonatomic) NSUInteger humidity;

/**
 Wind direction, degrees (meteorological)
 */
@property (assign, nonatomic) double windDirection;

@end
