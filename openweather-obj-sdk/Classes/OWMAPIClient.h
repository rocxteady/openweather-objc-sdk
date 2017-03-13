//
//  OWMAPIClient.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OWMCoordinates.h"
#import "OWMWeather.h"
#import "OWMWeatherArrayResult.h"
#import "OWMDailyForecastResult.h"

/**
 API client model fot HTTP requests
 */
@interface OWMAPIClient : NSObject

//Response blocks
typedef void(^OWMWeatherBlock)(OWMWeather *weatherData, NSError *error);
typedef void(^OWMWeatherArrayResultBlock)(OWMWeatherArrayResult *result, NSError *error);
typedef void(^OWMWeatherDailyForecastResultBlock)(OWMDailyForecastResult *result, NSError *error);

/**
 Shared client instance method

 @return OWMAPIClient instance
 */
+ (OWMAPIClient *)client;

//Call current weather data for one location

/**
 Get weather data by cityname. API responds with a list of results that match a searching word.

 @param cityName City name
 @param block Response block
 */
- (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block;

/**
 Get weather data by cityname and country code. API responds with a list of results that match a searching word.
 
 @param cityName City name
 @param countryCode Country code of the city. use ISO 3166 country codes
 @param block Response block
 */
- (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block;

/**
 Get weather data by city ID. API responds with exact result

 @param cityID City ID
 @param block Response block
 */
- (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMWeatherBlock)block;

/**
 Get weather data by coordinates. API responds with exact result
 
 @param coordinates Coordinate model of the location of your interest 
 @param block Response block
 */
- (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherBlock)block;

/**
 Get weather data by city ZIP code. API responds with exact result
 
 @param ZIPCode ZIP code
 @param block Response block
 */
- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block;

//Call current weather data for several cities

/**
 Get weather data by several city IDs.
 @param cityIDs City IDs
 @param count Number of cities around the point that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getWeatherByCityIDs:(NSArray *)cityIDs limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

/**
 Get weather data by a rectangle zone. JSON returns the data from cities within the defined rectangle specified by the geographic coordinates.
 @param zone [lon-left,lat-bottom,lon-right,lat-top,zoom]
 @param count Number of cities around the point that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getWeatherByRectangleZone:(NSString *)zone limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

/**
 Get weather data by cities in a cycle. JSON returns data from cities laid within definite circle that is specified by center point ('lat', 'lon') and expected number of cities ('cnt') around this point. The default number of cities is 10, the maximum is 50.
 @param coordinates Center coordinates of the cycle
 @param count Number of cities around the point that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

//Call 5 day / 3 hour forecast data. You can search weather forecast for 5 days with data every 3 hours.

/**
 Get forecast data by cityname and country code. API responds with a list of results that match a searching word.
 
 @param cityName City name
 @param countryCode Country code of the city
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

/**
 Get forecast data by city ID. API responds with exact result
 
 @param cityID City ID
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

/**
 Get forecast data by coordinates. API responds with exact result
 
 @param coordinates Coordinate model of the location of your interest
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

/**
 Get forecast data by city ZIP code. API responds with exact result
 
 @param ZIPCode ZIP code
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block;

//Call 16 day / daily forecast data. You can search 16 day weather forecast with daily average parameters

/**
 Get forecast data by cityname and country code. API responds with a list of results that match a searching word.
 
 @param cityName City name
 @param countryCode Country code of the city
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

/**
 Get forecast data by city ID. API responds with exact result
 
 @param cityID City ID
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getDailyForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

/**
 Get forecast data by coordinates. API responds with exact result
 
 @param coordinates Coordinate model of the location of your interest
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

/**
 Get forecast data by city ZIP code. API responds with exact result
 
 @param ZIPCode ZIP code
 @param count Number of cities that should be returned. 0 for no limit.
 @param block Response block
 */
- (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

@end
