//
//  ButtonView.swift
//  SolarSystemPlanets
//
//  Created by Dusan Orescanin on 30/08/2022.
//

import SwiftUI

struct ButtonView: View {
    
    @Binding var currentIndex: Int
    var forward: Bool
    
    var body: some View {
        Button {
            forward ? moveForward() : moveBackward()
        } label: {
            Image(systemName: forward ? "signpost.right.fill" : "signpost.left.fill")
                .font(.largeTitle)
        }
    }
    
    func moveForward() {
        if currentIndex == 8 {
            currentIndex = 0
        } else {
            currentIndex += 1
        }
    }
    
    func moveBackward() {
        if currentIndex == 0 {
            currentIndex = 8
        } else {
            currentIndex -= 1
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(currentIndex: .constant(0), forward: true)
    }
}
