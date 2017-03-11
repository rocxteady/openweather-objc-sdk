//
//  OWMWeather.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@protocol OWMWeatherInfo
@end

@interface OWMWeatherInfo : OWMBaseModel

@property (assign, nonatomic) NSUInteger weatherInfoID;
@property (strong, nonatomic) NSString *main;
@property (strong, nonatomic) NSString *weatherDescription;
@property (strong, nonatomic) NSString *icon;

@end
