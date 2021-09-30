//
//  AlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


struct AlgorithmsMenu: View {
    
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
                    NavigationLink(destination: LazyView(TidBitView(factory.getTidBit(.whatAreAlgorithms)))) {
                        Topic(
                            description: "What are",
                            botDescription: "Algorithms?",
                            splitDescription: true,
                            rectColor: ADDColor.topicOneRect,
                            txtColor: ADDColor.topicText,
                            size: size,
                            rectWidth: size.width / ADDUI.Topic.widthScalingFactor,
                            rectHeight: size.height / ADDUI.Topic.heightScalingFactor)
                    }
                }
            }
            
            Section(header: Text("Algorithms")) {
                NavigationLink(
                    destination:
                        SimpleContentSelectionView(
                            title: "Search",
                            factory: factory,
                            content: [.binarySearch, .breadthFirstSearch, .depthFirstSearch]),
                    tag: "Search",
                    selection: $selection
                ) {
                    NavigationButton(description: "Search", image: SFSymbols.search, imgForeground: ADDColor.algorithms)
                }
                
                NavigationLink(
                    destination:
                        SimpleContentSelectionView(
                            title: "Sort",
                            factory: factory,
                            content: [.insertionSort, .mergeSort, .quickSort, .selectionSort]),
                    tag: "Sort",
                    selection: $selection
                ) {
                    NavigationButton(description: "Sort", image: SFSymbols.sort, imgForeground: ADDColor.algorithms)
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
    }
}
