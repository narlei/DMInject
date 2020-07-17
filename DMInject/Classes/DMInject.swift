//
//  DMInject.swift
//  DeliveryMuch
//
//  Created by Narlei A Moreira on 14/05/19.
//  Copyright © 2019 Narlei A Moreira. All rights reserved.
//

import Foundation


/// Add @Inject in your property
@propertyWrapper public struct Inject<T> {
    public init() {}

    public var wrappedValue: T? {
        DMInject.main.getInstance(interface: T.self)
    }
}

/// Dependency injection manager
public class DMInject {
    public static let main = DMInject()

    var injectionMapper: DMInjectionMapperProtocol?

    public init() {}

    /// Initialize the DMInject In your AppDelegate, but you can change any time
    /// - Parameter mapper: Your Injection Mapper
    public func initialize(mapper: DMInjectionMapperProtocol) {
        injectionMapper = mapper
        mapper.initialize()
    }

    /// Get the instanced object that corresponds of protocol passed as parameter. Need to use with `DMInject.main`
    /// - Parameter interface: The Interface protocol as `Protocol.self`
    /// - Returns: The instanced object or nil if is not mapped
    public func getInstance<T>(interface: T.Type) -> T? {
        guard let injectionMapper = injectionMapper else {
            print("Please inject `DMInjectionMapperProtocol` into `DMInject` to run your app correctly!")
            return nil
        }

        let allInjections = injectionMapper.getAllInjections()
        for objc in allInjections {
            if objc is T {
                return objc as? T
            }
        }
        return nil
    }

    /// A easy way to get the instanced object
    /// - Parameters:
    ///   - left: The object as optional and with protocol type Ex: `var myObject: MyObjectProtocol?`
    ///   - right: The DMInject. Ex: `myObject << DMInject()`
    public static func << <T>(left: inout T?, right: DMInject) {
        if let allInjections = DMInject.main.injectionMapper?.getAllInjections() {
            for objc in allInjections {
                if objc is T {
                    left = objc as? T
                    return
                }
            }
        }
    }
}
