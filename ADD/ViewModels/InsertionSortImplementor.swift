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
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        return instance.isFileAvailable(file, for: page)
    }
    
    func getSummaryFor(file: FileNumber) -> URLRequest {
        return instance.getSummaryFor(file: file)
    }
    
    func getExplanationFor(file: FileNumber) -> URLRequest {
        return instance.getExplanationFor(file: file)
    }
    
    func getCodeExampleFor(file: FileNumber) -> URLRequest {
        return instance.getCodeExampleFor(file: file)
    }
    
    func getExampleProblemFor(file: FileNumber) -> URLRequest {
        return instance.getExampleProblemFor(file: file)
    }
}
