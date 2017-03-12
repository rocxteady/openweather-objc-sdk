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

@interface OWMWeatherArrayResult : OWMBaseResult

@property (assign, nonatomic) NSUInteger cnt;
@property (strong, nonatomic) NSArray <OWMWeather> *weatherDatas;

@end
