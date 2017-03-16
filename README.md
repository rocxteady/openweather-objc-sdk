# openweathermap-objc-sdk

[![CI Status](http://img.shields.io/travis/rocxteady/openweathermap-objc-sdk.svg?style=flat)](https://travis-ci.org/rocxteady/openweathermap-objc-sdk)
[![Version](https://img.shields.io/cocoapods/v/openweathermap-objc-sdk.svg?style=flat)](http://cocoapods.org/pods/openweathermap-objc-sdk)
[![License](https://img.shields.io/cocoapods/l/openweathermap-objc-sdk.svg?style=flat)](http://cocoapods.org/pods/openweathermap-objc-sdk)
[![Platform](https://img.shields.io/cocoapods/p/openweathermap-objc-sdk.svg?style=flat)](http://cocoapods.org/pods/openweathermap-objc-sdk)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

openweathermap-objc-sdk is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "openweathermap-objc-sdk"
```
## Usage
###### Getting Current Conditions
```
#import <openweathermap_objc_sdk/OWMSDK.h>

[[OWMAPIClient client] getWeatherByCityName:@"istanbul" block:^(OWMWeather *weatherData, NSError *error) {
    if (!error && [weatherData.code isEqual:@"200"]) {
        //Data received
    }
}];
```
###### Getting Current Conditions for Several Cities
```
[[OWMAPIClient client] getWeatherByCityIDs:@[@524901,@703448,@2643743] limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
    if (!error && [result.code isEqual:@"200"]) {
        //Data received
    }
}];
```
###### Getting Hourly Forecast
```
[[OWMAPIClient client] getForecastByCityName:@"istanbul" countryCode:@"tr" limitResultByCount:0 block:^(OWMWeatherArrayResult *result, NSError *error) {
    if (!error && [result.code isEqual:@"200"]) {
        //Data received
    }
}];
```
###### Getting Daily Forecast
```
[[OWMAPIClient client] getDailyForecastByCityName:@"istanbul" countryCode:@"tr" limitResultByCount:0 block:^(OWMDailyForecastResult *result, NSError *error) {
    if (!error && [result.code isEqual:@"200"]) {
        //Data received
    }
}];
```

## Author

Ulaş Sancak, ulas.sancak@hotmail.com.tr

## License

openweathermap-objc-sdk is available under the MIT license. See the LICENSE file for more info.
