//
//  OWMWeatherCycleArrayResult.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMWeather.h"

@protocol OWMWeather;

@interface OWMWeatherCycleArrayResult : OWMBaseModel

@property (assign, nonatomic) NSUInteger count;
@property (strong, nonatomic) NSArray <OWMWeather> *weatherDatas;


@end
