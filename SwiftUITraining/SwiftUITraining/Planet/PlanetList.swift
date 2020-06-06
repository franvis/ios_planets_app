//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI

struct PlanetList: View {

    let planetService: PlanetServiceProtocol
    @State private var planets: [Planet] = []

    var body: some View {
        NavigationView {
            List(planets) { item in
                NavigationLink(destination: PlanetDetail(planet: item)) {
                    PlanetListRow(planet: item)
                }
            }
            .navigationBarTitle("Planets")
        }
        .onAppear {
            self.planetService.planets { planets in
                self.planets = planets
            }
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanetList(planetService: PlanetServiceSucceedingStub())
                .previewDisplayName("Success")
            PlanetList(planetService: PlanetServiceFailingStub())
                .previewDisplayName("Fail")
        }
    }
}
