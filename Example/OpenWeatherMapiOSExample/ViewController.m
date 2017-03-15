//
//  ViewController.m
//  OpenWeatherMapiOSExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "ViewController.h"
#import <openweathermap_objc_sdk/OWMAPIClient.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[OWMAPIClient client] getWeatherByCityName:@"istanbul" block:^(OWMWeather *weatherData, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCityName:@"istanbul" countryCode:@"tr" block:^(OWMWeather *weatherData, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCityID:56456 block:^(OWMWeather *weatherData, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCoordinates:[[OWMCoordinates alloc] initWithLatitude:41.0 longitude:29.0] block:^(OWMWeather *weatherData, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCityZIPCode:@"34188" countryCode:@"tr" block:^(OWMWeather *weatherData, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByRectangleZone:@"12,32,15,37,10" limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCityIDs:@[@524901,@703448,@2643743] limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getWeatherByCycleZoneWithCoordinates:[[OWMCoordinates alloc] initWithLatitude:41.0 longitude:29.0] countOfCity:3 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getForecastByCityName:@"istanbul" countryCode:@"tr" limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getForecastByCityID:524901 limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getForecastByCoordinates:[[OWMCoordinates alloc] initWithLatitude:41.0 longitude:29.0] limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getForecastByCityZIPCode:@"34188" countryCode:@"tr" limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getDailyForecastByCityName:@"istanbul" countryCode:@"tr" limitResultByCount:0 block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getDailyForecastByCityID:524901 limitResultByCount:0 block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getDailyForecastByCoordinates:[[OWMCoordinates alloc] initWithLatitude:41.0 longitude:29.0] limitResultByCount:0 block:^(OWMDailyForecastResult *result, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [[OWMAPIClient client] getDailyForecastByCityZIPCode:@"34188" countryCode:@"tr" limitResultByCount:0 block:^(OWMDailyForecastResult *result, NSError *error) {
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
