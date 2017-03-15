//
//  OWMDailyForecastResult.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseResult.h"
#import "OWMCity.h"
#import "OWMDailyForecastWeather.h"

@protocol OWMDailyForecastWeather;

/**
 The result model of the daily forecast API
 */
@interface OWMDailyForecastResult : OWMBaseResult

/**
 Returned number of lines
 */
@property (assign, nonatomic) NSUInteger cnt;

/**
 Returned forecast array
 */
@property (strong, nonatomic) NSArray <OWMDailyForecastWeather> *weatherDatas;

/**
 Related city information model
 */
@property (strong, nonatomic) OWMCity *city;

@end
