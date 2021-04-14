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
    
    func get(_ contentCategory: ContentCategory, in file: FileNumber) -> URLRequest {
        switch contentCategory {
        case .summary:
            return instance.getContentIn(file: file, for: .Summary)
        case .explanation:
            return instance.getContentIn(file: file, for: .Explanation)
        case .codeExample:
            return instance.getContentIn(file: file, for: .Code)
        case .exampleProblem:
            return instance.getContentIn(file: file, for: .Example)
        default:
            // Views that call unexpected content get InsertionSortSummary_1.html
            return instance.getContentIn(file: .one, for: .Summary)
        }
    }
}
