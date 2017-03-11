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

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityName:cityName countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityID:(NSUInteger)cityID block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityID:cityID block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCoordinates:coordinates block:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherDailyForecastResultBlock)block {
    [[OWMAPIClient client] getDailyForecastByCityZIPCode:ZIPCode countryCode:countryCode block:^(NSDictionary *response, NSError *error) {
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
