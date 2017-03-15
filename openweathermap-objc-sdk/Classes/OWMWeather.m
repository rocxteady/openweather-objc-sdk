//
//  OWMWeather.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMWeather.h"

@implementation OWMWeather

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"coordinates": @"coord",
                                                                  @"weatherInfos": @"weather",
                                                                  @"base": @"base",
                                                                  @"main": @"main",
                                                                  @"visibility":  @"visibility",
                                                                  @"wind": @"wind",
                                                                  @"clouds": @"clouds",
                                                                  @"rain": @"rain",
                                                                  @"snow": @"snow",
                                                                  @"dataTime": @"dt",
                                                                  @"sys": @"sys",
                                                                  @"cityID":  @"id",
                                                                  @"cityName": @"name"                                                                  }];
}

@end
