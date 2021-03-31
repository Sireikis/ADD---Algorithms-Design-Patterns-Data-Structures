//
//  InsertionSortImplementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation

// Concrete Implementor + Adapter
// Acts as a ViewModel?
class InsertionSortImplementor: AlgorithmImplementor {
    let instance: InsertionSort
    
    init(_ i: InsertionSort) {
        self.instance = i
    }
    
    func summary() -> NSAttributedString {
        return instance.getSummary()
    }
    
    func bigO() -> String {
        return instance.getBigO()
    }
    
    func codeExample() {
        
    }
    
    func explanation() {
        
    }
    
    func exampleProblem() {
        
    }
}
