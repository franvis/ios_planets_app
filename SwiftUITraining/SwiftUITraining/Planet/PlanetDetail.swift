//
//  PlanetDetail.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetDetail: View {

    let planet: Planet

    var body: some View {
        ZStack {
            Image("Sky")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                AnimatedImage(url: planet.imageUrl)
                    .resizable()
                    .frame(width: 250, height: 250)
                Text(planet.name)
                    .font(Font.custom("Helvetica", size: 48))
                    .foregroundColor(.white)
                Text(planet.shortDescription)
                    .font(Font.custom("Helvetica", size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .multilineTextAlignment(.center)
                Spacer()
            }
        }
        .padding(.top, -40)
    }
}

struct PlanetDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetail(planet: PlanetMockData.planets[0])
    }
}
