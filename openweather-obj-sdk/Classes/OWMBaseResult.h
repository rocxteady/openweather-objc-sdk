//
//  OWMBaseResult.h
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMBaseModel.h"

@interface OWMBaseResult : OWMBaseModel

@property (strong, nonatomic) NSString *cod;
@property (strong, nonatomic) NSString *message;
@property (assign, nonatomic) double calcTime;

@end
