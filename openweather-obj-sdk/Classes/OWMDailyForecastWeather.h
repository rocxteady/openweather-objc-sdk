//
//  OWMDailyWeather.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMTemperature.h"
#import "OWMWeatherInfo.h"
#import "OWMDailyForecastResult.h"

@protocol OWMDailyForecastWeather
@end

@class OWMDailyForecastResult;

typedef void(^OWMWeatherDailyForecastResultBlock)(OWMDailyForecastResult *result, NSError *error);

@interface OWMDailyForecastWeather : OWMBaseModel

@property (strong, nonatomic) NSArray <OWMWeatherInfo> *weatherInfos;
@property (assign, nonatomic) double windSpeed;
@property (assign, nonatomic) NSUInteger clouds;
@property (assign, nonatomic) double rain;
@property (assign, nonatomic) double snow;
@property (assign, nonatomic) double dt;
@property (strong, nonatomic) OWMTemperature *temperature;
@property (assign, nonatomic) double pressure;
@property (assign, nonatomic) NSUInteger humidity;
@property (assign, nonatomic) double degree;

//Call 16 day / daily forecast data

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCityID:(NSUInteger)cityID block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode block:(OWMWeatherDailyForecastResultBlock)block;

@end
