//
//  OWMTemperature.m
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMTemperature.h"

@implementation OWMTemperature

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"day": @"day",
                                                                  @"min": @"min",
                                                                  @"max": @"max",
                                                                  @"night": @"night",
                                                                  @"evening":  @"eve",
                                                                  @"morning": @"morn"
                                                                  }];
}

@end
