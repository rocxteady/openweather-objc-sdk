//
//  OWMCity.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMCoordinates.h"

/**
 City model
 */
@interface OWMCity : OWMBaseModel

/**
 City ID
 */
@property (assign, nonatomic) NSUInteger cityID;

/**
 City name
 */
@property (strong, nonatomic) NSString *name;

/**
 City coordinates
 */
@property (strong, nonatomic) OWMCoordinates *coordinates;

/**
 The country of the city
 */
@property (strong, nonatomic) NSString *country;

/**
 The population of the city
 */
@property (assign, nonatomic) NSUInteger population;

@end
