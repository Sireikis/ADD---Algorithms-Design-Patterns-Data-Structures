//
//  AlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


// Using wiki Algo Types
struct AlgorithmsMenu: View {
    let headingWidth: CGFloat = 216
    let factory: ContentFactory
    
    // Fixes selected link staying grey when navigating back.
    @State var selection: String? = nil
    
    var body: some View {
        List {
            /*
             // https://www.quora.com/What-is-a-list-of-the-eight-types-of-algorithms
             Section(header: Text("Alternate ways of ordering")) {
                 // Divide and conquer, dynamic, greedy, etc
                 Text("By Design Paradigm")
                 
                 // Such as recursive vs iterative, logical vs procedural, serial vs parallel, etc.
                 Text("By Implementation")
                 
                 // BigO
                 Text("By Complexity")
                 
                 // Sort, Search, current method.
                 Text("By Purpose")
             }
             */
            ScrollView(.horizontal) {
                HStack {
                    // Describes the intent of the app, as a reference mainly
                    // Use Geometry Reader, not hardcoded
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreAlgorithms)))) {
                        Topic(description: "What are Algorithms?",
                              rectColor: .pink, txtColor: .white, rectWidth: headingWidth)
                        
                    }

                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreClassifications)))) {
                        Topic(description: "What are Classifications?",
                              rectColor: .green, txtColor: .white, rectWidth: headingWidth)
                        
                    }
                }
            }
            
            Section(header: Text("Classification")) {
                NavigationLink(destination: SearchAlgorithmsMenu()) {
                    NavigationButton(description: "By Design Paradigm", image: "arrow.triangle.branch", imgForeground: .green)
                }
                
                NavigationLink(destination: SearchAlgorithmsMenu()) {
                    NavigationButton(description: "By Implementation", image: "arrow.triangle.2.circlepath", imgForeground: .green)
                }
                
                NavigationLink(destination: SearchAlgorithmsMenu()) {
                    NavigationButton(description: "By Complexity", image: "circle", imgForeground: .green)
                }
            }
            
            Section(header: Text("By Purpose")) {
                // Section, by purpose?
                // However, there are infinitely many purposes
                NavigationLink(destination: SearchAlgorithmsMenu(), tag: "Search", selection: $selection) {
                    NavigationButton(description: "Search", image: "magnifyingglass", imgForeground: .green)
                }.onDisappear {
                    self.selection = nil
                }
                
                NavigationLink(destination: SortAlgorithmsMenu(factory: factory), tag: "Sort", selection: $selection) {
                    NavigationButton(description: "Sort", image: "arrow.up.arrow.down", imgForeground: .green)
                }.onDisappear {
                    self.selection = nil
                }
            }.id("idSection1")
        }.id("idList")
        .navigationBarTitle("Algorithms", displayMode: .inline)
    }
}


struct AlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmsMenu(factory: ContentFactory())
            //.environmentObject(SingleWebView())
    }
}
