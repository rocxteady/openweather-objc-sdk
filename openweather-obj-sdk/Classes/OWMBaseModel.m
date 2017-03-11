//
//  OWMBaseModel.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@implementation OWMBaseModel

- (NSString *)cod {
    if (!_cod) {
        return @"200";
    }
    return _cod;
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cod": @"cod",
                                                                  @"message": @"message",
                                                                  @"calcTime": @"calctime"
                                                                  }];
}


@end
