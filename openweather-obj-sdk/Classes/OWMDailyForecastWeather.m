//
//  OWMDailyWeather.m
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMDailyForecastWeather.h"
#import "OWMAPIClient.h"

@implementation OWMDailyForecastWeather

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityName:cityName countryCode:countryCode limitResultByCount:count block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityID:cityID limitResultByCount:count block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCoordinates:coordinates limitResultByCount:count block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityZIPCode:ZIPCode countryCode:countryCode limitResultByCount:count block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"dt": @"dt",
                                                                  @"temperature": @"temp",
                                                                  @"pressure": @"pressure",
                                                                  @"humidity": @"humidity",
                                                                  @"weatherInfos":  @"weather",
                                                                  @"windSpeed": @"wind",
                                                                  @"clouds": @"clouds",
                                                                  @"rain": @"rain",
                                                                  @"snow": @"snow",
                                                                  @"degree": @"deg"
                                                                  }];
}

@end
