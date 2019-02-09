#
# Be sure to run `pod lib lint RxCallbacks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxCallbacks'
  s.version          = '0.1.0'
  s.summary          = 'An RxSwift extension for converting callbacks to observables.'
  s.description      = 'Convert callback closures to observables using the provided static `fromCallback function.'
  s.homepage         = 'https://github.com/briansemiglia/RxCallbacks'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'brian.semiglia@gmail.com' => 'brian.semiglia@gmail.com' }
  s.source           = { :git => 'https://github.com/briansemiglia/RxCallbacks.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/brians_'
  s.ios.deployment_target = '8.0'
  s.source_files = 'RxCallbacks/Classes/**/*'
  s.swift_version = '4.2'
  s.dependency 'RxSwift', '~> 4.4.0'
end
