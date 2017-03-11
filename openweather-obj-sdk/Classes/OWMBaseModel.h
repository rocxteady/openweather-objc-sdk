//
//  OWMBaseModel.h
//  OpenWeatherMapExample
//
//  Created by Ulaş Sancak on 10/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface OWMBaseModel : JSONModel

@property (strong, nonatomic) NSString *cod;
@property (strong, nonatomic) NSString *message;
@property (assign, nonatomic) double calcTime;

@end
