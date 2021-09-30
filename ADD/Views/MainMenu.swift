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
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    // Describes the intent of the app
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatIsADD)))) {
                        Topic(
                            description: "What is ADD?",
                            rectColor: ADDColor.topicOneRect,
                            txtColor: ADDColor.topicText,
                            size: size,
                            rectWidth: size.width / ADDUI.Topic.widthScalingFactor,
                            rectHeight: size.height / ADDUI.Topic.heightScalingFactor)
                    }
                    
                    // A description of Big O
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.bigO)))) {
                        Topic(
                            description: "Big O",
                            rectColor: ADDColor.topicTwoRect,
                            txtColor: ADDColor.topicText,
                            size: size,
                            rectWidth: size.width / ADDUI.Topic.widthScalingFactor,
                            rectHeight: size.height / ADDUI.Topic.heightScalingFactor)
                    }
                }
            }
            
            NavigationLink(destination: AlgorithmsMenu(factory: factory)) {
                NavigationButton(
                    description: "Algorithms",
                    txtColor: ADDColor.algorithms,
                    image: SFSymbols.algorithms,
                    imgForeground: ADDColor.algorithms)
            }
            
            NavigationLink(destination: DesignPatternsMenu(factory: factory)) {
                NavigationButton(
                    description: "Design Patterns",
                    txtColor: ADDColor.designPatterns,
                    image: SFSymbols.designPatterns,
                    imgForeground: ADDColor.designPatterns)
            }
            
            NavigationLink(destination: DataStructuresMenu(factory: factory)) {
                NavigationButton(
                    description: "Data Structures",
                    txtColor: ADDColor.dataStructures,
                    image: SFSymbols.dataStructures,
                    imgForeground: ADDColor.dataStructures)
            }
        }
        .navigationTitle("ADD")
        .navigationBarItems(
            leading: NavigationLink(destination: SearchView(factory: factory)) {
                Label("Search", systemImage: SFSymbols.search)
            },
            trailing: NavigationLink(destination: SettingsView()) {
                Label("Settings", systemImage: SFSymbols.settings)
                    .labelStyle(IconOnlyLabelStyle())
            })
    }
}


struct MainMenu_Previews: PreviewProvider {
    
    static var previews: some View {
        MainMenu()
            .environmentObject(SingleWebView())
    }
}
