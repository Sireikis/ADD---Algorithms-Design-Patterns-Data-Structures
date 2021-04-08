//
//  ContentFactory.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation


// Factory
class ContentFactory {
    func getSortContent(_ contentType: SortAlgorithm) -> ContentImplementor {
        switch contentType {
        case .insertionSort:
            return ContentImplementor(InsertionSort())
        case .selectionSort:
            return ContentImplementor(SelectionSort())
        }
    }
    
    // Methods that get other content types.
    //func getSearchContent(_ contentType: SearchAlgorithm) -> ContentImplementor { }
}
