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
                
                Text("Design Patterns")
                
                Text("Data Structures")
            }
            .navigationBarItems(trailing: Text("Settings"))
            .navigationBarTitle("ADD", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
