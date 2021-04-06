//
//  DesignPatternsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct DesignPatternsMenu: View {
    var body: some View {
        Form {
            NavigationLink(destination: BehavioralDPMenu()) {
                Text("Behavioral")
            }
            
            NavigationLink(destination: CreationalDPMenu()) {
                Text("Creational")
            }
            
            NavigationLink(destination: StructuralDPMenu()) {
                Text("Structural")
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
