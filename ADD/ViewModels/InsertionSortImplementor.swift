//
//  InsertionSortImplementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation

// Concrete Implementor + Adapter
// Acts as a ViewModel?
// Can act as proxy?
class InsertionSortImplementor: AlgorithmImplementor {
    let instance: InsertionSort
    
    init(_ i: InsertionSort) {
        self.instance = i
    }
    
    func summary() -> URLRequest {
        return instance.getSummary()
    }
    
    func codeExample() {
        
    }
    
    func explanation() -> URLRequest {
        return instance.getExplanation()
    }
    
    func exampleProblem() {
        
    }
}
