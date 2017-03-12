//
//  OWMParams.h
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMBaseModel.h"

typedef NS_ENUM(NSUInteger, OWMSearchAccuracy) {
    OWMSearchAccuracyNone,
    OWMSearchAccuracyLike,
    OWMSearchAccuracyAccurate
};

typedef NS_ENUM(NSUInteger, OWMUnitsFormat) {
    OWMUnitsFormatStandard,
    OWMUnitsFormatMetric,
    OWMUnitsFormatImperial
};

@interface OWMParams : OWMBaseModel

@property (assign, nonatomic) OWMSearchAccuracy searchAccuracy;
@property (assign, nonatomic) OWMUnitsFormat unitsFormat;
@property (strong, nonatomic) NSString *lang;

+ (instancetype)defaultParams;

@end
