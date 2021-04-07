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
            List {
                NavigationLink(destination: AlgorithmsMenu()) {
                    NavigationButton(description: "Algorithms", txtColor: .green, image: "flowchart", imgForeground: .green)
                }
                
                NavigationLink(destination: DesignPatternsMenu()) {
                    NavigationButton(description: "Design Patterns", txtColor: .blue, image: "checkerboard.rectangle", imgForeground: .blue)
                }
                
                NavigationLink(destination: DataStructuresMenu()) {
                    NavigationButton(description: "Data Structures", txtColor: .red, image: "building.columns", imgForeground: .red)
                }
            }
            .navigationBarItems(trailing: Text("Settings"))
            .navigationTitle("ADD")
        }
        //.navigationTitle<V>(test())
        // Fixes the grey buttons on backtrack, but gives lots of errors.
        // OS_ACTIVITY_MODE is disabled, so no errors.
        //.navigationViewStyle(DefaultNavigationViewStyle())
        // Does however remove multi screen funcitonality in iPad
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
