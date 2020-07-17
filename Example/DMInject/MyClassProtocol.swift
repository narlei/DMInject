//
//  MyClassProtocol.swift
//  DMInject_Example
//
//  Created by Narlei A Moreira on 17/07/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

protocol MyClassProtocol {
    func getName() -> String
}

class MyClass: MyClassProtocol {
    func getName() -> String {
        return "Narlei"
    }
}
