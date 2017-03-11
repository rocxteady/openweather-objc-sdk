//
//  OWMCity.h
//  Pods
//
//  Created by Ulaş Sancak on 11/03/2017.
//
//

#import "OWMBaseModel.h"
#import "OWMCoordinates.h"

@interface OWMCity : OWMBaseModel

@property (assign, nonatomic) NSUInteger cityID;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) OWMCoordinates *coordinates;
@property (strong, nonatomic) NSString *country;

@end
