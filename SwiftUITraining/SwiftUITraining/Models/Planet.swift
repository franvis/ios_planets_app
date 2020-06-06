//
//  Planet.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

struct Planet: Decodable, Identifiable {
    let id: String
    let name: String
    let shortDescription: String
    let imageUrl: URL
}
