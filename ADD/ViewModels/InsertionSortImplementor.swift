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
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        return instance.isFileAvailable(file, for: page)
    }
    
    func getSummaryFor(file: FileNumber) -> URLRequest {
        return instance.getContentIn(file: file, for: .Summary)
    }
    
    func getExplanationFor(file: FileNumber) -> URLRequest {
        return instance.getContentIn(file: file, for: .Explanation)
    }
    
    func getCodeExampleFor(file: FileNumber) -> URLRequest {
        return instance.getContentIn(file: file, for: .Code)
    }
    
    func getExampleProblemFor(file: FileNumber) -> URLRequest {
        return instance.getContentIn(file: file, for: .Example)
    }
}
