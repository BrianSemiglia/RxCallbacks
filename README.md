# RxCallbacks

[![CI Status](https://img.shields.io/travis/brian.semiglia@gmail.com/RxCallbacks.svg?style=flat)](https://travis-ci.org/brian.semiglia@gmail.com/RxCallbacks)
[![Version](https://img.shields.io/cocoapods/v/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)
[![License](https://img.shields.io/cocoapods/l/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)
[![Platform](https://img.shields.io/cocoapods/p/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)

## Usage

```swift
// Function with single argument of completion handler
let x: Observable<Void> = .fromCallback(PHPhotoLibrary.shared().performChangesAndWait)
    
// Function with n arguments, the last being a completiong handler
let y: Observable<(Bool, Error?)> = .fromCallback(curry(PHPhotoLibrary.shared().performChanges)({ /* changes */ }))

// Functions that accept completion handlers AND return non-void types aren't compatible
let z: Observable<Void> = .fromCallback(curry(URLSession.shared().dataTask)(URL(string: "")!))

// Because some functions produce multiple callbacks, the Observable returned by `.fromCallback`
// intentionally avoids producing a completion event. To achieve this, the caller may use the 
// `take` operator to produce this event.
let n = Observable<PartialData>.fromCallback(Network.progressiveDownload).take(3)
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

RxCallbacks is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxCallbacks'
```

## Author

brian.semiglia@gmail.com

## License

RxCallbacks is available under the MIT license. See the LICENSE file for more info.
