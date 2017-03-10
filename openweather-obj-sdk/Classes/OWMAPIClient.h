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

//Current weather

- (void)getWeatherByCityName:(NSString *)cityName block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityIDs:(NSArray *)cityIDs block:(OWMClientResponseBlock)block;

- (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMClientResponseBlock)block;

- (void)getWeatherByRectangleZone:(NSString *)zone block:(OWMClientResponseBlock)block;

- (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode block:(OWMClientResponseBlock)block;

- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block;


@end
