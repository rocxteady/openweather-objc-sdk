//
//  OWMCity.m
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMCity.h"

@implementation OWMCity

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cityID": @"id",
                                                                  @"name": @"name",
                                                                  @"coordinates": @"coord",
                                                                  @"country": @"country",
                                                                  @"population": @"population"
                                                                  }];
}


@end
