//
//  OWMRain.m
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMRain.h"

@implementation OWMRain

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"volumeForLast3Hours": @"3h"
                                                                  }];
}

@end
