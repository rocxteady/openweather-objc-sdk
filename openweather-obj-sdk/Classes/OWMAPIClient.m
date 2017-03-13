//
//  OWMAPIClient.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMAPIClient.h"
#import <AFNetworking/AFNetworking.h>
#import "OWMClient.h"
#import "OWMParams.h"

static NSString *const BaseURL = @"http://api.openweathermap.org";
static NSString *const DataURI = @"data";
static NSString *const Version = @"2.5";
static NSString *const APITypeWeather = @"weather";
static NSString *const APITypeBoxCity = @"box/city";
static NSString *const APITypeFind = @"find";
static NSString *const APITypeGroup = @"group";

static NSString *const APITypeForecast = @"forecast";
static NSString *const APITypeDailyForecast = @"forecast/daily";

typedef void(^OWMClientResponseBlock)(NSDictionary *response, NSError *error);

@interface OWMAPIClient ()

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end


@implementation OWMAPIClient

+ (OWMAPIClient *)client {
    static OWMAPIClient *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[OWMAPIClient alloc] init];
    });
    return client;
}

- (instancetype)init {
    self = [super init];
    if (self) {
         _manager = [AFHTTPSessionManager manager];
    }
    return self;
}

- (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"q": cityName} withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

- (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"q": [NSString stringWithFormat:@"%@,%@", cityName, countryCode]} withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

- (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMWeatherBlock)block {
     [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"id": @(cityID)} withBlock:^(NSDictionary *response, NSError *error) {
         OWMWeather *weatherData = nil;
         if (!error) {
             weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
         }
         block(weatherData, error);
     }];
}

- (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"lat": @(coordinates.latitude), @"lon": @(coordinates.longitude)} withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"zip": [NSString stringWithFormat:@"%@,%@", ZIPCode, countryCode]} withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeather *weatherData = nil;
        if (!error) {
            weatherData = [[OWMWeather alloc] initWithDictionary:response error:&error];
        }
        block(weatherData, error);
    }];
}

- (void)getWeatherByCityIDs:(NSArray *)cityIDs limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSString *cityIDsString = [cityIDs componentsJoinedByString:@","];
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:cityIDsString, @"id", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeGroup] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getWeatherByRectangleZone:(NSString *)zone limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:zone, @"bbox", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeBoxCity] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeFind] withParameters:@{@"lat": @(coordinates.latitude), @"lon": @(coordinates.longitude), @"cnt": @(count)} withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:cityName, @"q", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:@(cityID), @"id", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:@(coordinates.latitude), @"lat", @(coordinates.longitude), @"lon", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherArrayResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"%@,%@", ZIPCode, countryCode], @"zip", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMWeatherArrayResult *result = nil;
        if (!error) {
            result = [[OWMWeatherArrayResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:cityName, @"q", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeDailyForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getDailyForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:@(cityID), @"id", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeDailyForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:@(coordinates.latitude), @"lat", @(coordinates.longitude), @"lon", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeDailyForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block {
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"%@,%@", ZIPCode, countryCode], @"zip", nil];
    if (count > 0) {
        params[@"cnt"] = @(count);
    }
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeDailyForecast] withParameters:params withBlock:^(NSDictionary *response, NSError *error) {
        OWMDailyForecastResult *result = nil;
        if (!error) {
            result = [[OWMDailyForecastResult alloc] initWithDictionary:response error:&error];
        }
        block(result, error);
    }];
}

- (void)getWithURL:(NSString *)URL withParameters:(id)parameters withBlock:(OWMClientResponseBlock)block{
    parameters = [parameters mutableCopy];
    parameters[@"appid"] = [OWMClient client].AppID;
    NSDictionary *params = [OWMParams defaultParams].toDictionary;
    if (params.count > 0) {
         [parameters addEntriesFromDictionary:params];
    }
    
    [_manager GET:URL parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        block(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(nil, error);
    }];
}


@end
