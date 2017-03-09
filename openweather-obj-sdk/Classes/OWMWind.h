//
//  OWMWind.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMWind : OWMBaseModel

@property (assign, nonatomic) double speed;
@property (assign, nonatomic) NSUInteger deg;

@end
