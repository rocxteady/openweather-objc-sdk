//
//  ViewController.m
//  OpenWeatherMapiOSExample
//
//  Created by Ulaş Sancak on 09/03/2017.
//  Copyright © 2017 Ulaş Sancak. All rights reserved.
//

#import "ViewController.h"
#import <openweather_obj_sdk/OWMWeather.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [OWMWeather getWeatherByCityIds:@[@524901,@703448,@2643743] block:^(OWMWeatherArrayResult *result, NSError *error) {
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
