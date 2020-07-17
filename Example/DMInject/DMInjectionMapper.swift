//
//  DMInjectionMapper.swift
//  DeliveryMuch
//
//  Created by Narlei A Moreira on 17/07/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

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
