//
//  PlanetView.swift
//  SolarSystemPlanets
//
//  Created by Dusan Orescanin on 30/08/2022.
//

import SwiftUI

struct PlanetView: View {
    
    var planet: Planet
    
    var body: some View {
        VStack {
            Text(planet.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Image(planet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Divider()
                .frame(height: 3)
                .overlay(.white)
                .padding()
            Text("Position depuis le soleil: \(planet.position)")
                .foregroundColor(.white)
                .italic()
                .font(.title2)
            ScrollView {
                Text(planet.planetDesc())
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetView(planet: Datas().jupiter)
            .preferredColorScheme(.dark)
    }
}
