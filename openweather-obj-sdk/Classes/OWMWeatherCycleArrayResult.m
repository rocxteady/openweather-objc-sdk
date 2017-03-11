//
//  OWMWeatherCycleArrayResult.m
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMWeatherCycleArrayResult.h"

@implementation OWMWeatherCycleArrayResult

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"count": @"count",
                                                                  @"weatherDatas": @"list"
                                                                  }];
}

@end
