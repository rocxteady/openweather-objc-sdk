//
//  OWMWeatherArrayResult.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMWeather.h"

@interface OWMWeatherArrayResult : OWMBaseModel

@property (assign, nonatomic) NSUInteger cnt;
@property (strong, nonatomic) NSArray <OWMWeather> *weatherDatas;

@end
