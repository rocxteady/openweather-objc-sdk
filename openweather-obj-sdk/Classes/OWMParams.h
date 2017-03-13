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

/**
 General parameters for all API calls
 */
@interface OWMParams : OWMBaseModel

/**
 You can use our geocoding system to find cities by name, country, zip-code or geographic coordinates. You can call also by part of the city name. To make the result more accurate just put the city name and country divided by comma.
 
 To set the accuracy level either use the 'accurate' or 'like' type parameter. 'accurate' returns exact match values. 'like' returns results by searching for that substring.
 Call API by city ID instead of city name, city coordinates or zip code. In this case you get precise respond exactly for your city.
 */
@property (assign, nonatomic) OWMSearchAccuracy searchAccuracy;

/**
 Standard, metric, and imperial units are available. Default OWMUnitsFormatStandard
 */
@property (assign, nonatomic) OWMUnitsFormat unitsFormat;

/**
 You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: English - en, Russian - ru, Italian - it, Spanish - es (or sp), Ukrainian - uk (or ua), German - de, Portuguese - pt, Romanian - ro, Polish - pl, Finnish - fi, Dutch - nl, French - fr, Bulgarian - bg, Swedish - sv (or se), Chinese Traditional - zh_tw, Chinese Simplified - zh (or zh_cn), Turkish - tr, Croatian - hr, Catalan - ca
 NOTE: Translation is only applied for the "description" field.
 */
@property (strong, nonatomic) NSString *lang;

/**
 Default parameters. No search accuracy. OWMUnitsFormatStandard for unitsFormat. en for lang. You can manipulate the returned instance.

 @return OWMParams instance
 */
+ (instancetype)defaultParams;

@end
