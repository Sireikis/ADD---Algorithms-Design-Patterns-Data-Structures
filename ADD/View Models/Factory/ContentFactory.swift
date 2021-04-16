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
    
    func getTidBit(_ tidBit: TidBits) -> TidBitImplementor {
        switch tidBit {
        case .beginner:
            return TidBitImplementor(Beginner())
        case .bigO:
            return TidBitImplementor(BigO())
        case .glossary:
            return TidBitImplementor(Glossary())
        case .whatIsADD:
            return TidBitImplementor(WhatIsADD())
        case .whatAreAlgorithms:
            return TidBitImplementor(WhatAreAlgorithms())
        case .whatAreClassifications:
            return TidBitImplementor(WhatAreClassifications())
        case .whatAreDesignPatterns:
            return TidBitImplementor(WhatAreDesignPatterns())
        case .DPCategories:
            return TidBitImplementor(DPCategories())
        case .whatAreDataStructures:
            return TidBitImplementor(WhatAreDataStructures())
        case .DSCategories:
            return TidBitImplementor(DSCategories())
        }
    }
    
    // Methods that get other content types.
    //func getSearchContent(_ contentType: SearchAlgorithm) -> ContentImplementor { }
}
