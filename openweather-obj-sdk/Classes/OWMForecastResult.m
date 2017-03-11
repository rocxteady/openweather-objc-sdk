//
//  OWMForecastResult.m
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMForecastResult.h"

@implementation OWMForecastResult

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"city": @"city"
                                                                  }];
}


@end
