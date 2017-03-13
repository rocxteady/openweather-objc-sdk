//
//  OWMWind.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMWind.h"

@implementation OWMWind

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"speed": @"speed",
                                                                  @"direction": @"deg"
                                                                  }];
}

@end
