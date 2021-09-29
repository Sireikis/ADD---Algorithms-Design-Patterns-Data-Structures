//
//  DataStructuresMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct DataStructuresMenu: View {
    
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
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreDataStructures)))) {
                        Topic(
                            description: "What are",
                            botDescription: "Data Structures?",
                            splitDescription: true,
                            rectColor: .pink,
                            txtColor: .white,
                            size: size,
                            rectWidth: size.width / TidBitUI.widthScalingFactor,
                            rectHeight: size.height / TidBitUI.heightScalingFactor)
                    }
                    
                    // Describes the difference between linear, tree, hash-based, and graph
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.DSCategories)))) {
                        Topic(
                            description: "What do these",
                            botDescription: "categories mean?",
                            splitDescription: true,
                            rectColor: .green,
                            txtColor: .white,
                            size: size,
                            rectWidth: size.width / TidBitUI.widthScalingFactor,
                            rectHeight: size.height / TidBitUI.heightScalingFactor)
                    }
                }
            }
            
            Section(header: Text("Structures")) {
                NavigationLink(
                    destination: SimpleContentSelectionView(
                        title: "Linear",
                        factory: factory,
                        content: [.array, .linkedList]),
                    tag: "Linear",
                    selection: $selection
                ) {
                    NavigationButton(description: "Linear", image: SFSymbols.linear, imgForeground: .red)
                }
                
                NavigationLink(
                    destination: SimpleContentSelectionView(
                        title: "Tree",
                        factory: factory,
                        content: [.binarySearchTree, .binaryTree]),
                    tag: "Tree",
                    selection: $selection
                ) {
                    NavigationButton(description: "Tree", image: SFSymbols.tree, imgForeground: .red)
                }
                
                NavigationLink(
                    destination: SimpleContentSelectionView(
                        title: "Hash-based",
                        factory: factory,
                        content: [.hashList, .hashTable]),
                    tag: "Hash-based",
                    selection: $selection
                ) {
                    NavigationButton(description: "Hash-based", image: SFSymbols.hashBased, imgForeground: .red)
                }
                
                NavigationLink(
                    destination: SimpleContentSelectionView(
                        title: "Graph",
                        factory: factory,
                        content: [.adjacencyList]),
                    tag: "Graph",
                    selection: $selection
                ) {
                    NavigationButton(description: "Graph", image: SFSymbols.graph, imgForeground: .red)
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
