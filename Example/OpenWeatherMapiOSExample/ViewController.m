//
//  ViewController.m
//  OpenWeatherMapiOSExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "ViewController.h"
#import <openweather_obj_sdk/OWMDailyForecastWeather.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [OWMDailyForecastWeather getDailyForecastByCityName:@"istanbul" countryCode:@"tr" block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [OWMDailyForecastWeather getDailyForecastByCityID:524901 block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [OWMDailyForecastWeather getDailyForecastByCityZIPCode:@"34188" countryCode:@"tr" block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [OWMDailyForecastWeather getDailyForecastByCoordinates:[[OWMCoordinates alloc] initWithLatitude:41.0 longitude:29.0]  block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
