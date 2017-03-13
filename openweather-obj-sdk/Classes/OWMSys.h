//
//  OWMSys.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMSys : OWMBaseModel

@property (assign, nonatomic) NSUInteger type;
@property (assign, nonatomic) NSUInteger sysID;

/**
 Country code (GB, JP etc.)
 */
@property (strong, nonatomic) NSString *countryCode;
@property (strong, nonatomic) NSString *pod;

/**
 Sunrise time, unix, UTC
 */
@property (assign, nonatomic) NSTimeInterval sunriseTime;

/**
 Sunset time, unix, UTC
 */
@property (assign, nonatomic) NSTimeInterval sunsetTime;

@end
