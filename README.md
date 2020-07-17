# DMInject

[![Version](https://img.shields.io/cocoapods/v/DMInject.svg?style=flat)](https://cocoapods.org/pods/DMInject)
[![License](https://img.shields.io/cocoapods/l/DMInject.svg?style=flat)](https://cocoapods.org/pods/DMInject)
[![Platform](https://img.shields.io/cocoapods/p/DMInject.svg?style=flat)](https://cocoapods.org/pods/DMInject)


DMInject is a Dependency Manager that helps you to clear your code and be more productive.


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to use

### First Step - add mapping:

```Swift
import DMInject

class DMInjectionMapper: DMInjectionMapperProtocol {
    var arrayReturn = [Any]()

    // Use this map to add the objects, the DMInject will get by type
    func initialize() {
        arrayReturn.append(MyClass())
    }

    func getAllInjections() -> [Any] {
        return arrayReturn
    }
}
```

### Add to your AppDelegate:

```Swift
DMInject.main.initialize(mapper: DMInjectionMapper())
```

### Now is only use:

```Swift
// Exemple 1: Easy way
var myclass: MyClassProtocol?
myclass << DMInject()
if let name = myclass?.getName() {
    print(name)
}


// Exemple 1: Declarative way
let myClass2 = DMInject.main.getInstance(interface: MyClassProtocol.self)
if let name = myClass2?.getName() {
    print(name)
}
```

## Requirements

- iOS 9.3 
- XCode 11

## Installation

DMInject is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DMInject'
```

## Author

Narlei Moreira, narlei.guitar@gmail.com

## License

DMInject is available under the MIT license. See the LICENSE file for more info.
