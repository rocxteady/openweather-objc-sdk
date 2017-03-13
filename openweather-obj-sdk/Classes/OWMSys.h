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
@property (strong, nonatomic) NSString *countryCode;
@property (strong, nonatomic) NSString *pod;
@property (assign, nonatomic) NSTimeInterval sunriseTime;
@property (assign, nonatomic) NSTimeInterval sunsetTime;

@end
