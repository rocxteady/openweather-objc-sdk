//
//  OWMAPIClient.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OWMAPIClient : NSObject

typedef void(^OWMClientResponseBlock)(NSDictionary *response, NSError *error);

+ (OWMAPIClient *)client;

- (void)getWeatherWithBlock:(OWMClientResponseBlock)block;

@end
