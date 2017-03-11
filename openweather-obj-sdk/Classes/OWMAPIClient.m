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

static NSString *const BaseURL = @"http://api.openweathermap.org";
static NSString *const DataURI = @"data";
static NSString *const Version = @"2.5";
static NSString *const APITypeWeather = @"weather";
static NSString *const APITypeBoxCity = @"box/city";
static NSString *const APITypeFind = @"find";
static NSString *const APITypeGroup = @"group";

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

- (void)getWeatherByCityName:(NSString *)cityName block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"q": cityName} withBlock:block];
}

- (void)getWeatherByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"q": [NSString stringWithFormat:@"%@,%@", cityName, countryCode]} withBlock:block];
}

- (void)getWeatherByCityID:(NSUInteger)cityID block:(OWMClientResponseBlock)block {
     [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"id": @(cityID)} withBlock:block];
}

- (void)getWeatherByCityIDs:(NSArray *)cityIDs block:(OWMClientResponseBlock)block {
    NSString *cityIDsString = [cityIDs componentsJoinedByString:@","];
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeGroup] withParameters:@{@"id": cityIDsString} withBlock:block];
}

- (void)getWeatherByCoordinates:(OWMCoordinates *)coordinates block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"lat": @(coordinates.latitude), @"lon": @(coordinates.longitude)} withBlock:block];
}

- (void)getWeatherByRectangleZone:(NSString *)zone block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeBoxCity] withParameters:@{@"bbox": zone} withBlock:block];
}

- (void)getWeatherByCycleZoneWithCoordinates:(OWMCoordinates *)coordinates countOfCity:(NSUInteger)count block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeFind] withParameters:@{@"lat": @(coordinates.latitude), @"lon": @(coordinates.longitude), @"cnt": @(count)} withBlock:block];
}

- (void)getWeatherByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:@{@"zip": [NSString stringWithFormat:@"%@,%@", ZIPCode, countryCode]} withBlock:block];
}

- (void)getWithURL:(NSString *)URL withParameters:(id)parameters withBlock:(OWMClientResponseBlock)block{
    parameters = [parameters mutableCopy];
    parameters[@"appid"] = [OWMClient client].AppID;
    [_manager GET:URL parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        block(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(nil, error);
    }];
}


@end
