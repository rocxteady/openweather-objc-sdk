//
//  OWMSys.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMSys.h"

@implementation OWMSys

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"type": @"type",
                                                                  @"sysID": @"id",
                                                                  @"message": @"message",
                                                                  @"pod": @"pod",
                                                                  @"countryCode": @"country",
                                                                  @"sunriseTime":  @"sunrise",
                                                                  @"sunsetTime": @"sunset"
                                                                  }];
}

@end
