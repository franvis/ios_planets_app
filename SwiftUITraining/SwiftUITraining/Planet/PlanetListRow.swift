//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 05/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetListRow: View {

    let planet: Planet

    var body: some View {
        HStack {
            AnimatedImage(url: planet.imageUrl)
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(planet.name)
                    .font(Font.custom("Helvetica", size: 20))
                Text(planet.shortDescription)
                    .font(Font.custom("Helvetica", size: 13))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct PlanetListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanetListRow(planet: PlanetMockData.planets[0])
                .previewLayout(.fixed(width: 375, height: 80))
                .previewDisplayName("Mercury")
            PlanetListRow(planet: PlanetMockData.planets[1])
                .previewLayout(.fixed(width: 375, height: 80))
                .previewDisplayName("Jupiter")
        }
    }
}
