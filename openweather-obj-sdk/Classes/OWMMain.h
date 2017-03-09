//
//  OWMMain.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMMain : OWMBaseModel

@property (assign, nonatomic) double temp;
@property (assign, nonatomic) double pressure;
@property (assign, nonatomic) double humidity;
@property (assign, nonatomic) double tempMin;
@property (assign, nonatomic) double tempMax;

@end
