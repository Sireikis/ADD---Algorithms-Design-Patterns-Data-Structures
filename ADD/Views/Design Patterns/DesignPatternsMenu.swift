//
//  DesignPatternsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct DesignPatternsMenu: View {
    
    let factory: ContentFactory
    // Fixes selected link staying grey when navigating back.
    @State var selection: String?
    
    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreDesignPatterns)))) {
                        Topic(
                            description: "What are",
                            botDescription: "Design Patterns?",
                            splitDescription: true,
                            rectColor: ADDColor.topicOneRect,
                            txtColor: ADDColor.topicText,
                            size: size,
                            rectWidth: size.width / ADDUI.Topic.widthScalingFactor,
                            rectHeight: size.height / ADDUI.Topic.heightScalingFactor)
                    }
                    
                    // Describes the difference between behavioral, creational, and structural
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.DPCategories)))) {
                        Topic(
                            description: "What do these",
                            botDescription: "categories mean?",
                            splitDescription: true,
                            rectColor: ADDColor.topicTwoRect,
                            txtColor: ADDColor.topicText,
                            size: size,
                            rectWidth: size.width / ADDUI.Topic.widthScalingFactor,
                            rectHeight: size.height / ADDUI.Topic.heightScalingFactor)
                    }
                }
            }
            
            Section(header: Text("Patterns")) {
                NavigationLink(
                    destination:
                        SimpleContentSelectionView(
                            title: "Behavioral",
                            factory: factory,
                            content: [.command, .observer, .strategy]),
                    tag: "Behavioral",
                    selection: $selection
                ) {
                    NavigationButton(description: "Behavioral", image: SFSymbols.behavioral, imgForeground: ADDColor.designPatterns)
                }
                
                NavigationLink(
                    destination:
                        SimpleContentSelectionView(
                            title: "Creational",
                            factory: factory,
                            content: [.abstractFactory, .factoryMethod, .singleton]),
                    tag: "Creational",
                    selection: $selection
                ) {
                    NavigationButton(description: "Creational", image: SFSymbols.creational, imgForeground: ADDColor.designPatterns)
                }
                
                NavigationLink(
                    destination: SimpleContentSelectionView(
                        title: "Structural",
                        factory: factory,
                        content: [.adapter, .bridge, .decorator, .proxy]),
                    tag: "Structural",
                    selection: $selection
                ) {
                    NavigationButton(description: "Structural", image: SFSymbols.structural, imgForeground: ADDColor.designPatterns)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Design Patterns", displayMode: .inline)
    }
}


struct DesignPatternsMenu_Previews: PreviewProvider {
    
    static var previews: some View {
        DesignPatternsMenu(factory: ContentFactory())
    }
}
