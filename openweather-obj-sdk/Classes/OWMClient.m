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
    return client;
}

+ (OWMClient *)clientWithAppID:(NSString *)AppID {
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
