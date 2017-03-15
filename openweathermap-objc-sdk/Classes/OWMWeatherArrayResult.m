//
//  OWMWeatherArrayResult.m
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMWeatherArrayResult.h"

@interface OWMWeatherArrayResult ()

@property (assign, nonatomic) NSUInteger alternativeCnt;

@end

@implementation OWMWeatherArrayResult

- (NSUInteger)cnt {
    if (_cnt == 0) {
        return _alternativeCnt;
    }
    return _cnt;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cnt": @"cnt",
                                                                  @"alternativeCnt": @"count",
                                                                  @"weatherDatas": @"list"
                                                                  }];
}

@end
