//
//  OWMWeather.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"
#import "OWMCoordinates.h"
#import "OWMWeatherInfo.h"
#import "OWMMain.h"
#import "OWMWind.h"
#import "OWMClouds.h"
#import "OWMSys.h"
#import "OWMWeatherArrayResult.h"
#import "OWMWeatherCycleArrayResult.h"

@protocol OWMWeather
@end

@class OWMWeather;
@class OWMWeatherArrayResult;
@class OWMWeatherCycleArrayResult;

typedef void(^OWMWeatherBlock)(OWMWeather *weatherData, NSError *error);
typedef void(^OWMWeatherArrayResultBlock)(OWMWeatherArrayResult *result, NSError *error);
typedef void(^OWMWeatherCycleArrayResultBlock)(OWMWeatherCycleArrayResult *result, NSError *error);

@interface OWMWeather : OWMBaseModel

@property (strong, nonatomic) OWMCoordinates *coordinates;
@property (strong, nonatomic) NSArray <OWMWeatherInfo> *weatherInfos;
@property (strong, nonatomic) NSString *base;
@property (strong, nonatomic) OWMMain *main;
@property (assign, nonatomic) NSUInteger visibility;
@property (strong, nonatomic) OWMWind *wind;
@property (strong, nonatomic) OWMClouds *clouds;
@property (assign, nonatomic) double dt;
@property (strong, nonatomic) OWMSys *sys;
@property (assign, nonatomic) NSUInteger weatherID;
@property (strong, nonatomic) NSString *name;

//Call current weather data for one location

+ (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block;

+ (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block;

+ (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMWeatherBlock)block;

+ (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherBlock)block;

+ (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block;

//Call current weather data for several cities

+ (void)getWeatherByRectangleZone:(NSString *)zone block:(OWMWeatherArrayResultBlock)block;

+ (void)getWeatherByCityIds:(NSArray *)cityIds block:(OWMWeatherArrayResultBlock)block;

+ (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMWeatherCycleArrayResultBlock)block;

//Call 5 day / 3 hour forecast data

+ (void)getForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block;

+ (void)getForecastByCityID:(NSUInteger)cityID block:(OWMWeatherArrayResultBlock)block;

+ (void)getForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherArrayResultBlock)block;

+ (void)getForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block;

//Call 16 day / daily forecast data

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block;

+ (void)getDailyForecastByCityID:(NSUInteger)cityID block:(OWMWeatherArrayResultBlock)block;

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherArrayResultBlock)block;

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherArrayResultBlock)block;


@end
