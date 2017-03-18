//
//  OWMClient.m
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMClient.h"

static OWMClient *client;

@implementation OWMClient

+ (OWMClient *)client {
    NSAssert(client, @"OWMClient not initialized.");
    return client;
}

+ (OWMClient *)clientWithAppID:(NSString *)AppID {
    NSAssert(![AppID isEqual:@"dc734285acbc53fac9f427cf17f731e8"], @"Please use your own OpenWeatherMap API key.");
    NSAssert(AppID.length > 0, @"Please enter an OpenWeatherMap API key.");
    client = [[OWMClient alloc] initWithAppID:AppID];
    return client;
}

- (OWMClient *)initWithAppID:(NSString *)AppID {
    self = [super init];
    if (self) {
        _AppID = AppID;
    }
    return self;
}

@end
