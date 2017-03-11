//
//  OWMAPIClient.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OWMCoordinates.h"

@interface OWMAPIClient : NSObject

typedef void(^OWMClientResponseBlock)(NSDictionary *response, NSError *error);

+ (OWMAPIClient *)client;

//Call current weather data for one location

- (void)getWeatherByCityName:(NSString *)cityName block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMClientResponseBlock)block;

- (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

//Call current weather data for several cities

- (void)getWeatherByCityIDs:(NSArray *)cityIDs block:(OWMClientResponseBlock)block;

- (void)getWeatherByRectangleZone:(NSString *)zone block:(OWMClientResponseBlock)block;

- (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMClientResponseBlock)block;

//Call 5 day / 3 hour forecast data

- (void)getForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

- (void)getForecastByCityID:(NSUInteger)cityID block:(OWMClientResponseBlock)block;

- (void)getForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMClientResponseBlock)block;

- (void)getForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

//Call 16 day / daily forecast data

- (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

- (void)getDailyForecastByCityID:(NSUInteger)cityID block:(OWMClientResponseBlock)block;

- (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMClientResponseBlock)block;

- (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

@end
