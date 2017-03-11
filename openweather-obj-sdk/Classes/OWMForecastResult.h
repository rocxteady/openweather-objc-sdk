//
//  OWMForecastResult.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMWeatherArrayResult.h"
#import "OWMCity.h"

@interface OWMForecastResult : OWMWeatherArrayResult

@property (strong, nonatomic) OWMCity *city;

@end
