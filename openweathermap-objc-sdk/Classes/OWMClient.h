//
//  OWMClient.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 OpenWeatherMap configuration class
 */
@interface OWMClient : NSObject

/**
 API key for OpenWeatherMap
 */
@property (strong, nonatomic, readonly) NSString *AppID;

/**
 Shared configuration instance

 @return OWMClient instance
 */
+ (OWMClient *)client;

/**
 Create OWMClient with API key

 @param AppID API key
 @return OWMClient instance
 */
+ (OWMClient *)clientWithAppID:(NSString *)AppID;

@end
