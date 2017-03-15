//
//  OWMBaseResult.m
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMBaseResult.h"

@implementation OWMBaseResult

- (NSString *)code {
    if (!_code) {
        return @"200";
    }
    return _code;
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"code": @"cod",
                                                                  @"message": @"message",
                                                                  @"calcTime": @"calctime"
                                                                  }];
}

@end
