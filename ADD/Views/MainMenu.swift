//
//  MainMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct MainMenu: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: AlgorithmsMenu()) {
                    Text("Algorithms")
                }
                
                NavigationLink(destination: DesignPatternsMenu()) {
                    Text("Design Patterns")
                }
                
                NavigationLink(destination: DataStructuresMenu()) {
                    Text("Data Structures")
                }
            }
            .navigationBarItems(trailing: Text("Settings"))
            .navigationBarTitle("ADD", displayMode: .inline)
        }
        // Fixes the grey buttons on backtrack, but gives lots of errors.
        //.navigationViewStyle(DefaultNavigationViewStyle())
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
