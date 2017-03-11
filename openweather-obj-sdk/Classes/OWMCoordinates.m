//
//  OWMCoordinate.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMCoordinates.h"

@implementation OWMCoordinates

- (instancetype)initWithLatitude:(double)latitude longitude:(double)longitude {
    self = [super init];
    if (self) {
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                 @"latitude": @"lat",
                                                                 @"longitude": @"lon"
                                                                 }];
}

@end
