//
//  DMInjectionMapperProtocol.swift
//  DeliveryMuch
//
//  Created by Narlei A Moreira on 14/05/19.
//  Copyright © 2019 Narlei A Moreira. All rights reserved.
//

import Foundation

public protocol DMInjectionMapperProtocol {
    func initialize()
    func getAllInjections() -> [Any]
}
