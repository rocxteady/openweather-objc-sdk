//
//  OWMCoordinate.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "OWMBaseModel.h"

@interface OWMCoordinates : OWMBaseModel

@property (assign, nonatomic) double latitude;
@property (assign, nonatomic) double longitude;

- (instancetype)initWithLatitude:(double)latitude longitude:(double)longitude;

@end
