//
//  OWMDailyWeather.m
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMDailyForecastWeather.h"

@implementation OWMDailyForecastWeather

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"dataTime": @"dt",
                                                                  @"temperature": @"temp",
                                                                  @"pressure": @"pressure",
                                                                  @"humidity": @"humidity",
                                                                  @"weatherInfos":  @"weather",
                                                                  @"windSpeed": @"wind",
                                                                  @"clouds": @"clouds",
                                                                  @"rain": @"rain",
                                                                  @"snow": @"snow",
                                                                  @"windDirection": @"deg"
                                                                  }];
}

@end
