//
//  OWMWeather.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMWeather.h"
#import "OWMAPIClient.h"
#import "OWMWeatherArrayResult.h"

@implementation OWMWeather

+ (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block {
    [[OWMAPIClient client] getWeatherByCityName:cityName block:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

+ (void)getWeatherByCityIds:(NSArray *)cityIds block:(OWMWeatherArrayResultBlock)block {
    [[OWMAPIClient client] getWeatherByCityIDs:cityIds block:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"coordinates": @"coord",
                                                                  @"weatherInfos": @"weather",
                                                                  @"base": @"base",
                                                                  @"main": @"main",
                                                                  @"visibility":  @"visibility",
                                                                  @"wind": @"wind",
                                                                  @"clouds": @"clouds",
                                                                  @"dt": @"dt",
                                                                  @"sys": @"sys",
                                                                  @"weatherID":  @"id",
                                                                  @"name": @"name",
                                                                  @"cod": @"cod"
                                                                  }];
}

@end
