//
//  OWMClouds.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMClouds : OWMBaseModel

/**
 Cloudiness by percentage
 */
@property (assign, nonatomic) NSUInteger all;

@end
