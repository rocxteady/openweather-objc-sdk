//
//  OWMCoordinate.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMCoordinates.h"

@implementation OWMCoordinates

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                 @"latitude": @"lat",
                                                                 @"longitude": @"lon"
                                                                 }];
}

@end
