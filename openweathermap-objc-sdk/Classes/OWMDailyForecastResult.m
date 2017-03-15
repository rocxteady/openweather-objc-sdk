//
//  OWMDailyForecastResult.m
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMDailyForecastResult.h"

@implementation OWMDailyForecastResult

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cnt": @"cnt",
                                                                  @"weatherDatas": @"list",
                                                                  @"city": @"city"
                                                                  }];
}

@end
