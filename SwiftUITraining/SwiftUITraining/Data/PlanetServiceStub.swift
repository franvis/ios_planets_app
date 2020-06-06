//
//  PlanetServiceStub.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

class PlanetServiceFailingStub: PlanetServiceProtocol {
    func planets(closure: @escaping ([Planet]) -> Void) {
        closure([])
    }
}

class PlanetServiceSucceedingStub: PlanetServiceProtocol {
    func planets(closure: @escaping ([Planet]) -> Void) {
        closure(PlanetMockData.planets)
    }
}
