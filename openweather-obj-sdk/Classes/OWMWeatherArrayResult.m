//
//  OWMWeatherArrayResult.m
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMWeatherArrayResult.h"

@implementation OWMWeatherArrayResult

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cnt": @"cnt",
                                                                  @"weatherDatas": @"list"
                                                                  }];
}

@end
