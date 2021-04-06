//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation
import SwiftUI


// Adaptee
// Acts as a model?
class InsertionSort {
    private var filePath: String = "www/Algorithms/Sort/InsertionSort/"
    
    private var summaries = [FileNumber:URLRequest]()
    private var explanations = [FileNumber:URLRequest]()
    private var codeExamples = [FileNumber:URLRequest]()
    private var exampleProblems = [FileNumber:URLRequest]()
    
    
    // Factory Pattern?
    init() {
        loadHTMLContentFor(path: "Summary/InsertionSortSummary_", content: .Summary)
        loadHTMLContentFor(path: "Explanation/InsertionSortExplanation_", content: .Explanation)
        loadHTMLContentFor(path: "Code/InsertionSortCode_", content: .Code)
        loadHTMLContentFor(path: "Example/InsertionSortExample_", content: .Example)
    }
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        switch page {
        case .Summary:
            return summaries[file] != nil
        case .Explanation:
            return explanations[file] != nil
        case .Code:
            return codeExamples[file] != nil
        case .Example:
            return exampleProblems[file] != nil
        }
    }
    
    func getContentIn(file: FileNumber, for content: Page) -> URLRequest {
        switch content {
        case .Summary:
            guard let urlRequest = summaries[file] else { fatalError() }
            return urlRequest
        case .Explanation:
            guard let urlRequest = explanations[file] else { fatalError() }
            return urlRequest
        case .Code:
            guard let urlRequest = codeExamples[file] else { fatalError() }
            return urlRequest
        case .Example:
            guard let urlRequest = exampleProblems[file] else { fatalError() }
            return urlRequest
        }
    }
    
    func loadHTMLContentFor(path: String, content: Page) {
        for file in FileNumber.allCases {
            let fileName = self.filePath + path + String(file.rawValue)
            if let fileURL = Bundle.main.url(forResource: fileName, withExtension: "html") {
                switch content {
                case .Summary:
                    self.summaries[file] = URLRequest(url: fileURL)
                case .Explanation:
                    self.explanations[file] = URLRequest(url: fileURL)
                case .Code:
                    self.codeExamples[file] = URLRequest(url: fileURL)
                case .Example:
                    self.exampleProblems[file] = URLRequest(url: fileURL)
                }
            }
        }
    }
}

