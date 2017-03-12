//
//  OWMBaseResult.m
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMBaseResult.h"

@implementation OWMBaseResult

- (NSString *)cod {
    if (!_cod) {
        return @"200";
    }
    return _cod;
}


+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"cod": @"cod",
                                                                  @"message": @"message",
                                                                  @"calcTime": @"calctime"
                                                                  }];
}

@end
