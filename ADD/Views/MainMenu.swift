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
                            rectColor: .pink,
                            txtColor: .white,
                            size: size,
                            rectWidth: size.width / TidBitUI.widthScalingFactor,
                            rectHeight: size.height / TidBitUI.heightScalingFactor)
                    }
                    
                    // A description of Big O
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.bigO)))) {
                        Topic(
                            description: "Big O",
                            rectColor: .green,
                            txtColor: .white,
                            size: size,
                            rectWidth: size.width / TidBitUI.widthScalingFactor,
                            rectHeight: size.height / TidBitUI.heightScalingFactor)
                    }
                }
            }
            
            NavigationLink(destination: AlgorithmsMenu(factory: factory)) {
                NavigationButton(
                    description: "Algorithms",
                    txtColor: .green,
                    image: SFSymbols.algorithms,
                    imgForeground: .green)
            }
            
            NavigationLink(destination: DesignPatternsMenu(factory: factory)) {
                NavigationButton(
                    description: "Design Patterns",
                    txtColor: .blue,
                    image: SFSymbols.designPatterns,
                    imgForeground: .blue)
            }
            
            NavigationLink(destination: DataStructuresMenu(factory: factory)) {
                NavigationButton(
                    description: "Data Structures",
                    txtColor: .red,
                    image: SFSymbols.dataStructures,
                    imgForeground: .red)
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
