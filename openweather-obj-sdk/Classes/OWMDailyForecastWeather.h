//
//  OWMDailyWeather.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseResult.h"
#import "OWMTemperature.h"
#import "OWMWeatherInfo.h"
#import "OWMDailyForecastResult.h"

@protocol OWMDailyForecastWeather
@end

@class OWMDailyForecastResult;

typedef void(^OWMWeatherDailyForecastResultBlock)(OWMDailyForecastResult *result, NSError *error);

@interface OWMDailyForecastWeather : OWMBaseResult

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

+ (void)getDailyForecastByCityName:(NSString *)cityName countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCityID:(NSUInteger)cityID limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCoordinates:(OWMCoordinates *)coordinates limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

+ (void)getDailyForecastByCityZIPCode:(NSString *)ZIPCode countryCode:(NSString *)countryCode limitResultByCount:(NSUInteger)count block:(OWMWeatherDailyForecastResultBlock)block;

@end
