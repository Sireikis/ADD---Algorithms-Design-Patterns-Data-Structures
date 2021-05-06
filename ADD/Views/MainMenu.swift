//
//  MainMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct MainMenu: View {
    let factory: ContentFactory = ContentFactory()
    
    var body: some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    // Describes the intent of the app, as a reference mainly
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatIsADD)))) {
                        Topic(description: "What is ADD?",
                              rectColor: .pink, txtColor: .white)
                    }
                    
                    // A description of Big O
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.bigO)))) {
                        Topic(description: "Big O",
                              rectColor: .green, txtColor: .white)
                    }
                    
                    /*
                     // Implemented later
                     // A glossary that briefly explains the meaning of some commonly used terms
                     NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.glossary)))) {
                         Topic(description: "Glossary",
                               rectColor: .blue, txtColor: .white)
                     }
                     */
                }
            }
            
            NavigationLink(destination: AlgorithmsMenu(factory: factory)) {
                NavigationButton(description: "Algorithms", txtColor: .green, image: "flowchart", imgForeground: .green)
            }
            
            NavigationLink(destination: DesignPatternsMenu(factory: factory)) {
                NavigationButton(description: "Design Patterns", txtColor: .blue, image: "checkerboard.rectangle", imgForeground: .blue)
            }
            
            NavigationLink(destination: DataStructuresMenu(factory: factory)) {
                NavigationButton(description: "Data Structures", txtColor: .red, image: "building.columns", imgForeground: .red)
            }
        }
        .navigationTitle("ADD")
        //.navigationBarTitle("ADD", displayMode: .inline)
        
        .navigationBarItems(trailing: Text("Settings"))
        
        // Fixes the grey buttons on backtrack, but gives lots of errors.
        // OS_ACTIVITY_MODE is disabled, so no errors.
        //.navigationViewStyle(DefaultNavigationViewStyle())
        // Does however remove multi screen funcitonality in iPad
        
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}


/*
 // Settings icon that links to settings page
 // Necesary to have a settings page?
 // Maybe for about, submit feedback, review.
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
 */


struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
            .environmentObject(SingleWebView())
    }
}
