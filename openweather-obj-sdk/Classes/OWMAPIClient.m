//
//  OWMAPIClient.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMAPIClient.h"
#import <AFNetworking/AFNetworking.h>

static NSString *const BaseURL = @"http://samples.openweathermap.org";
static NSString *const DataURI = @"data";
static NSString *const Version = @"2.5";
static NSString *const APITypeWeather = @"weather";

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

- (void)getWeatherWithBlock:(OWMClientResponseBlock)block {
    [self getWithURL:[NSString stringWithFormat:@"%@/%@/%@/%@", BaseURL, DataURI, Version, APITypeWeather] withParameters:nil withBlock:block];
}

- (void)getWithURL:(NSString *)URL withParameters:(id)parameters withBlock:(OWMClientResponseBlock)block{
    [_manager GET:URL parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        block(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(nil, error);
    }];
}


@end
