//
//  OWMWeather.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"
#import "OWMCoordinates.h"
#import "OWMWeatherInfo.h"
#import "OWMMain.h"
#import "OWMWind.h"
#import "OWMClouds.h"
#import "OWMSys.h"

@interface OWMWeather : OWMBaseModel

@property (strong, nonatomic) OWMCoordinates *coordinates;
@property (strong, nonatomic) OWMWeatherInfo *weatherInfo;
@property (strong, nonatomic) NSString *base;
@property (strong, nonatomic) OWMMain *main;
@property (assign, nonatomic) NSUInteger visibility;
@property (strong, nonatomic) OWMWind *winds;
@property (strong, nonatomic) OWMClouds *clouds;
@property (assign, nonatomic) double dt;
@property (strong, nonatomic) OWMSys *sys;
@property (assign, nonatomic) NSUInteger weatherID;
@property (strong, nonatomic) NSString *country;
@property (assign, nonatomic) NSUInteger cond;

@end
