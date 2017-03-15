#
# Be sure to run `pod lib lint openweathermap-objc-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'openweathermap-objc-sdk'
  s.version          = '0.1.0'
  s.summary          = 'Unofficial Objective C SDK for OpenWeatherMap.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
	Unofficial Objective C SDK for OpenWeatherMap. It provides JSON model classes
	and related REST API GET methods.
                       DESC

  s.homepage         = 'https://github.com/rocxteady/openweathermap-objc-sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ulaş Sancak' => 'ulas.sancak@hotmail.com.tr' }
  s.source           = { :git => 'https://github.com/rocxteady/openweathermap-objc-sdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/rocxteady'

  s.ios.deployment_target = '9.0'

  s.source_files = 'openweathermap-objc-sdk/Classes/**/*'
  
  # s.resource_bundles = {
  #   'openweathermap-objc-sdk' => ['openweathermap-objc-sdk/Assets/*.png']
  # }

  s.public_header_files = 'openweathermap-objc-sdk/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
	s.dependency 'AFNetworking', '~> 3.1'
	s.dependency 'JSONModel', '~> 1.7'
end
