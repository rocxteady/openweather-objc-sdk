//
//  OWMMain.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMMain.h"

@implementation OWMMain

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"temp": @"temp",
                                                                  @"pressure": @"pressure",
                                                                  @"humidity": @"humidity",
                                                                  @"tempMin": @"temp_min",
                                                                  @"tempMax":  @"temp_max"
                                                                  }];
}

@end
