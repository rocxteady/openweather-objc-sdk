//
//  OWMBaseResult.h
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMBaseModel.h"

/**
 Base API Client request result model.
 */
@interface OWMBaseResult : OWMBaseModel

/**
 Status code of the response
 */
@property (strong, nonatomic) NSString *code;

/**
 Status message of the response
 */
@property (strong, nonatomic) NSString *message;

/**
 Speed of the data calculation
 */
@property (assign, nonatomic) double calcTime;

@end
