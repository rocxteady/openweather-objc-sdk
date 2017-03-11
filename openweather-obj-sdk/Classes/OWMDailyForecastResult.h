//
//  OWMDailyForecastResult.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMCity.h"
#import "OWMDailyForecastWeather.h"

@protocol OWMDailyForecastWeather;

@interface OWMDailyForecastResult : OWMBaseModel

@property (assign, nonatomic) NSUInteger cnt;
@property (strong, nonatomic) NSArray <OWMDailyForecastWeather> *weatherDatas;
@property (strong, nonatomic) OWMCity *city;

@end
