//
//  DataStructuresMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct DataStructuresMenu: View {
    let factory: ContentFactory
    let headingWidth: CGFloat = 216
    
    // Fixes selected link staying grey when navigating back.
    @State var selection: String?
    
    var body: some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreDataStructures)))) {
                        Topic(description: "What are", botDescription: "Data Structures?", splitDescription: true,
                              rectColor: .pink, txtColor: .white, rectWidth: headingWidth)
                    }
                    
                    // Describes the difference between behavioral, creational, and structural
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.DSCategories)))) {
                        Topic(description: "What do these", botDescription: "categories mean?", splitDescription: true,
                              rectColor: .green, txtColor: .white, rectWidth: headingWidth)
                    }
                }
            }
            
            Section(header: Text("Structures")) {
                NavigationLink(destination: LinearDSMenu(factory: factory), tag: "Linear", selection: $selection) {
                    NavigationButton(description: "Linear", image: "arrow.left.and.right", imgForeground: .red)
                }
                
                NavigationLink(destination: TreeDSMenu(factory: factory), tag: "Tree", selection: $selection) {
                    NavigationButton(description: "Tree", image: "leaf", imgForeground: .red)
                }
                
                NavigationLink(destination: HashBasedDSMenu(), tag: "Hash-based", selection: $selection) {
                    NavigationButton(description: "Hash-based", image: "grid", imgForeground: .red)
                }
                
                NavigationLink(destination: GraphDSMenu(), tag: "Graph", selection: $selection) {
                    NavigationButton(description: "Graph", image: "squareshape.controlhandles.on.squareshape.controlhandles", imgForeground: .red)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Data Structures", displayMode: .inline)
    }
}


struct DataStructuresMenu_Previews: PreviewProvider {
    static var previews: some View {
        DataStructuresMenu(factory: ContentFactory())
    }
}
