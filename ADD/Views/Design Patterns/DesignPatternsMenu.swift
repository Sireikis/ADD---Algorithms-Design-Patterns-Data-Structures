//
//  DesignPatternsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct DesignPatternsMenu: View {
    var body: some View {
        List {
            NavigationLink(destination: BehavioralDPMenu()) {
                NavigationButton(description: "Behavioral", image: "gearshape.2", imgForeground: .blue)
            }
            
            NavigationLink(destination: CreationalDPMenu()) {
                NavigationButton(description: "Creational", image: "lightbulb", imgForeground: .blue)
            }
            
            NavigationLink(destination: StructuralDPMenu()) {
                NavigationButton(description: "Structural", image: "square.grid.3x1.below.line.grid.1x2", imgForeground: .blue)
            }
        }
        .navigationBarTitle("Design Patterns", displayMode: .inline)
    }
}

struct DesignPatternsMenu_Previews: PreviewProvider {
    static var previews: some View {
        DesignPatternsMenu()
    }
}
