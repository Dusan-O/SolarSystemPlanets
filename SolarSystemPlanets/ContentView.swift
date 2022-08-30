//
//  ContentView.swift
//  SolarSystemPlanets
//
//  Created by Dusan Orescanin on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var planets = Datas().allPlanets
    var current = 0
    
    
    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
