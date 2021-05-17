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
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        List {
            ScrollView(.horizontal) {
                HStack {
                    // Describes the intent of the app, as a reference mainly
                    // Use Geometry Reader, not hardcoded
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreAlgorithms)))) {
                        Topic(description: "What are", botDescription: "Algorithms?", splitDescription: true,
                              rectColor: .pink, txtColor: .white, size: size, rectWidth: size.width / 2, rectHeight: size.height / 7)
                        
                    }
                }
            }
            
            Section(header: Text("Algorithms")) {
                NavigationLink(
                    destination: BasicContentSelectionView(title: "Search",
                                                           factory: factory,
                                                           content: [.binarySearch, .breadthFirstSearch, .depthFirstSearch]),
                    tag: "Search",
                    selection: $selection
                ) {
                    NavigationButton(description: "Search", image: "magnifyingglass", imgForeground: .green)
                }
                
                NavigationLink(
                    destination: BasicContentSelectionView(title: "Sort",
                                                           factory: factory,
                                                           content: [.insertionSort, .selectionSort, .mergeSort, .quickSort]),
                    tag: "Sort",
                    selection: $selection
                ) {
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
