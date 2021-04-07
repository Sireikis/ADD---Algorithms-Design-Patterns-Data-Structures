//
//  AlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI

// Using wiki Algo Types
struct AlgorithmsMenu: View {
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
            
            // Section, by purpose?
            // However, there are infinitely many purposes
            NavigationLink(destination: SearchAlgorithmsMenu()) {
                NavigationButton(description: "Search", image: "magnifyingglass", imgForeground: .green)
            }
            
            NavigationLink(destination: SortAlgorithmsMenu()) {
                NavigationButton(description: "Sort", image: "arrow.up.arrow.down", imgForeground: .green)
            }
        }
        .navigationBarTitle("Algorithms", displayMode: .inline)
    }
}



struct AlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmsMenu()
    }
}
