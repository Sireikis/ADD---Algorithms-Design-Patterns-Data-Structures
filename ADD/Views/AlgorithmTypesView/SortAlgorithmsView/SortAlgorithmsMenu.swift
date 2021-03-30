//
//  SortAlgorithmsMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI

struct SortAlgorithmsMenu: View {
    var body: some View {
        Form {
            //Text("Hello, Sort!")
            
            NavigationLink(destination: AlgorithmTabView(InsertionSortImplementor(InsertionSort()))) {
                Text("Insertion Sort")
                //Label("Insertion Sort", systemImage: "minus.slash.plus")
            }
            
            Text("Selection Sort")
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Sort", displayMode: .inline)
    }
}

struct SortAlgorithmsMenu_Previews: PreviewProvider {
    static var previews: some View {
        SortAlgorithmsMenu()
    }
}
