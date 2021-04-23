//
//  DesignPatternsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct DesignPatternsMenu: View {
    let factory: ContentFactory
    let headingWidth: CGFloat = 216
    
    // Fixes selected link staying grey when navigating back.
    @State var selection: String? = nil
    
    var body: some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreDesignPatterns)))) {
                        Topic(description: "What are", botDescription: "Design Patterns?", splitDescription: true,
                              rectColor: .pink, txtColor: .white, rectWidth: headingWidth)
                    }
                    
                    // Describes the difference between behavioral, creational, and structural
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.DPCategories)))) {
                        Topic(description: "What do these", botDescription: "categories mean?", splitDescription: true,
                              rectColor: .green, txtColor: .white, rectWidth: headingWidth)
                    }
                }
            }
            
            Section(header: Text("Patterns")) {
                NavigationLink(destination: BehavioralDPMenu(), tag: "Behavioral", selection: $selection) {
                    NavigationButton(description: "Behavioral", image: "gearshape.2", imgForeground: .blue)
                }.onDisappear {
                    self.selection = nil
                }
                
                NavigationLink(destination: CreationalDPMenu(), tag: "Creational", selection: $selection) {
                    NavigationButton(description: "Creational", image: "lightbulb", imgForeground: .blue)
                }.onDisappear {
                    self.selection = nil
                }
                
                NavigationLink(destination: StructuralDPMenu(), tag: "Structural", selection: $selection) {
                    NavigationButton(description: "Structural", image: "square.grid.3x1.below.line.grid.1x2", imgForeground: .blue)
                }.onDisappear {
                    self.selection = nil
                }
            }.id("idSection1")
        }
        .id("idList")
        .navigationBarTitle("Design Patterns", displayMode: .inline)
    }
}


struct DesignPatternsMenu_Previews: PreviewProvider {
    static var previews: some View {
        DesignPatternsMenu(factory: ContentFactory())
    }
}
