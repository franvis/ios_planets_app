//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import planets_multiplatform

struct PlanetList: View {

  let planetService: GetPlanets
  @State private var planets: [Planet] = []

  var body: some View {
    NavigationView {
      List(planets, id: \.id) { item in
        NavigationLink(destination: PlanetDetail(planet: item)) {
          PlanetListRow(planet: item)
        }
      }
      .navigationBarTitle("Planets")
      .onAppear {
        self.planetService.invoke { planets in
          self.planets = planets
        }
      }
    }
  }
}
