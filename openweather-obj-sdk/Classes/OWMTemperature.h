//
//  OWMTemperature.h
//  Pods
//
//  Created by Ulaş Sancak on 12/03/2017.
//
//

#import "OWMBaseModel.h"

@interface OWMTemperature : OWMBaseModel

@property (assign, nonatomic) double day;
@property (assign, nonatomic) double min;
@property (assign, nonatomic) double max;
@property (assign, nonatomic) double night;
@property (assign, nonatomic) double evening;
@property (assign, nonatomic) double morning;

@end
