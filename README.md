# RxCallbacks

[![CI Status](https://img.shields.io/travis/brian.semiglia@gmail.com/RxCallbacks.svg?style=flat)](https://travis-ci.org/brian.semiglia@gmail.com/RxCallbacks)
[![Version](https://img.shields.io/cocoapods/v/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)
[![License](https://img.shields.io/cocoapods/l/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)
[![Platform](https://img.shields.io/cocoapods/p/RxCallbacks.svg?style=flat)](https://cocoapods.org/pods/RxCallbacks)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

```
// Only argument
Observable<Void>
    .fromCallback(PHPhotoLibrary.shared().performChangesAndWait)
    .subscribe(onNext: { })
    .disposed(by: DisposeBag())
    
// Tail of n arguments
Observable<(Bool, Error?)>
    .fromCallback(curry(PHPhotoLibrary.shared().performChanges)({ /* changes */ }))
    .subscribe(onNext: { success, error in })
    .disposed(by: DisposeBag())

// Functions that accept completion handlers AND return non-void types aren't compatible
Observable<Void>
    .fromCallback(curry(URLSession.shared().dataTask)(URL(string: "")!))
    .subscribe(onNext: { })
    .disposed(by: DisposeBag())
```

## Installation

RxCallbacks is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxCallbacks'
```

## Author

brian.semiglia@gmail.com, brian.semiglia@gmail.com

## License

RxCallbacks is available under the MIT license. See the LICENSE file for more info.
