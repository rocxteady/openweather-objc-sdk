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

@protocol OWMWeather
@end

@class OWMWeather;
@class OWMWeatherArrayResult;

typedef void(^OWMWeatherBlock)(OWMWeather *weatherData, NSError *error);
typedef void(^OWMWeatherArrayResultBlock)(OWMWeatherArrayResult *result, NSError *error);

@interface OWMWeather : OWMBaseModel

@property (strong, nonatomic) OWMCoordinates *coordinates;
@property (strong, nonatomic) NSArray <OWMWeatherInfo> *weatherInfos;
@property (strong, nonatomic) NSString *base;
@property (strong, nonatomic) OWMMain *main;
@property (assign, nonatomic) NSUInteger visibility;
@property (strong, nonatomic) OWMWind *wind;
@property (strong, nonatomic) OWMClouds *clouds;
@property (assign, nonatomic) double dt;
@property (strong, nonatomic) OWMSys *sys;
@property (assign, nonatomic) NSUInteger weatherID;
@property (strong, nonatomic) NSString *name;

+ (void)getWeatherByCityName:(NSString *)cityName block:(OWMWeatherBlock)block;

+ (void)getWeatherByCityIds:(NSArray *)cityIds block:(OWMWeatherArrayResultBlock)block;

@end
