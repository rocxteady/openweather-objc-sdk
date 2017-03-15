//
//  OWMWeatherArrayResult.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMBaseResult.h"
#import "OWMWeather.h"

@protocol OWMWeather;

/**
 The the result model which includes the array of OWMWeather data.
 */
@interface OWMWeatherArrayResult : OWMBaseResult

/**
 The returned number of lines API
 */
@property (assign, nonatomic) NSUInteger cnt;

/**
 The array of OWMWeather data
 */
@property (strong, nonatomic) NSArray <OWMWeather> *weatherDatas;

@end
