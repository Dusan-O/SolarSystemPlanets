//
//  ContentView.swift
//  SolarSystemPlanets
//
//  Created by Dusan Orescanin on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    let spaceColor = Color(red: 29 / 255, green: 17 / 255, blue: 53 / 255)
    let spaceDeep = Color(red: 12 / 255, green: 22 / 255, blue: 79 / 255)
    
    var planets = Datas().allPlanets
    @State var current = 0
    
    
    var body: some View {
        ZStack(alignment: .top) {
            PlanetView(planet: planets[current])
            HStack {
                ButtonView(currentIndex: $current, forward: false)
                Spacer()
                ButtonView(currentIndex: $current, forward: true)
            }.padding()
        }.padding()
        .background(
          LinearGradient(colors: [spaceColor, spaceDeep],
                           startPoint: UnitPoint(x: 0, y: 0),
                           endPoint: UnitPoint(x: 1, y: 1))
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
