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
    @State var selection: String?
    
    var body: some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    // Describes the intent of the app, as a reference mainly
                    // Use Geometry Reader, not hardcoded
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreAlgorithms)))) {
                        Topic(description: "What are Algorithms?",
                              rectColor: .pink, txtColor: .white, rectWidth: headingWidth)
                        
                    }
                }
            }
            
            Section(header: Text("Algorithms")) {
                // Section, by purpose?
                // However, there are infinitely many purposes
                NavigationLink(destination: SearchAlgorithmsMenu(factory: factory), tag: "Search", selection: $selection) {
                    NavigationButton(description: "Search", image: "magnifyingglass", imgForeground: .green)
                }
                
                NavigationLink(destination: SortAlgorithmsMenu(factory: factory), tag: "Sort", selection: $selection) {
                    NavigationButton(description: "Sort", image: "arrow.up.arrow.down", imgForeground: .green)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Algorithms", displayMode: .inline)
    }
}


struct AlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmsMenu(factory: ContentFactory())
            //.environmentObject(SingleWebView())
    }
}
