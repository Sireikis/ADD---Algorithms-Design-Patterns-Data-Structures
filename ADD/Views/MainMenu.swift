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
                ScrollView(.horizontal) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .foregroundColor(.pink)
                            //.frame(height: 100)
                            // Use GeometryReader
                            .frame(width: 144, height: 144)
                        //Rectangle().foregroundColor(.pink)
                        Text("What is ADD?").foregroundColor(.black)
                    }
                }
                
                
                
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
            // These stay and don't move with the view.
            // Is this intended?
            //.navigationBarItems(trailing: SettingsIcon())
            //.navigationBarItems(trailing: Label("Settings", systemImage: "gearshape"))
            
            .navigationBarItems(trailing: Text("Settings"))
            .navigationBarTitle("ADD", displayMode: .inline)
            //.navigationTitle("ADD")
            //.navigationBarTitle(Text("ADD"))
            //.navigationBarItems(leading: Text("ADD"))
            
        }
        //.navigationTitle<V>(test())
        // Fixes the grey buttons on backtrack, but gives lots of errors.
        // OS_ACTIVITY_MODE is disabled, so no errors.
        //.navigationViewStyle(DefaultNavigationViewStyle())
        // Does however remove multi screen funcitonality in iPad
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsIcon: View {
    var body: some View {
        /*
         NavigationLink(destination: ()) {
             Label("Settings", systemImage: "gearshape")
                 .labelStyle(IconOnlyLabelStyle())
         }
         */
        
        Label("Settings", systemImage: "gearshape")
            .labelStyle(IconOnlyLabelStyle())
    }
}


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
