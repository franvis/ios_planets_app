//
//  PlanetMockData.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

struct PlanetMockData {
    static let planets: [Planet] = EntityLoader.load("planets.json")
}
