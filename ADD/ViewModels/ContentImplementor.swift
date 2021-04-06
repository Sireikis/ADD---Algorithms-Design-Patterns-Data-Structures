//
//  ContentImplementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation


// ViewModel, Concrete Implementor + Adapter
class ContentImplementor: Implementor {
    private let instance: Content
    
    init(_ i: Content) {
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
