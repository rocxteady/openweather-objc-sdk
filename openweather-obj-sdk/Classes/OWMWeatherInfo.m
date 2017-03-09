//
//  OWMWeather.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMWeatherInfo.h"

@implementation OWMWeatherInfo

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"weatherInfoID": @"id",
                                                                  @"main": @"main",
                                                                  @"weatherDescription": @"description",
                                                                  @"icon":  @"icon"
                                                                  }];
}

@end
