//
//  OWMParams.m
//  Pods
//
//  Created by Ulaş Sancak on 13/03/2017.
//
//

#import "OWMParams.h"

@interface OWMParams ()

@property (strong, nonatomic) NSString *searchAccuracyString;
@property (strong, nonatomic) NSString *unitsFormatString;

@end

@implementation OWMParams

+ (instancetype)defaultParams {
    static OWMParams *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.searchAccuracy = OWMSearchAccuracyNone;
        self.unitsFormat = OWMUnitsFormatStandard;
        self.lang = nil;
    }
    return self;
}

- (void)setSearchAccuracy:(OWMSearchAccuracy)searchAccuracy {
    _searchAccuracy = searchAccuracy;
    switch (_searchAccuracy) {
        case OWMSearchAccuracyNone:
            _searchAccuracyString = nil;
            break;
            
        case OWMSearchAccuracyLike:
            _searchAccuracyString = @"like";
            break;
        case OWMSearchAccuracyAccurate:
            _searchAccuracyString = @"accurate";
            break;
    }
}

- (void)setUnitsFormat:(OWMUnitsFormat)unitsFormat {
    _unitsFormat = unitsFormat;
    switch (_unitsFormat) {
        case OWMUnitsFormatStandard:
            _unitsFormatString = nil;
            break;
            
        case OWMUnitsFormatMetric:
            _unitsFormatString = @"metric";
            break;
        case OWMUnitsFormatImperial:
            _unitsFormatString = @"imperial";
            break;
    }
}

+ (BOOL)propertyIsIgnored:(NSString *)propertyName {
    if ([propertyName isEqual:@"searchAccuracy"] || [propertyName isEqual:@"unitsFormat"]) {
        return YES;
    }
    return [super propertyIsIgnored:propertyName];
}

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"searchAccuracyString": @"type",
                                                                  @"unitsFormatString": @"units",
                                                                  @"lang": @"lang"
                                                                  }];
}

@end
