//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation
import SwiftUI

// Change this so that summary, bigO, etc point to .html files.
// They should be strings and are just filenames.

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
        loadSummaries()
        loadExplanations()
        loadCodeExamples()
        loadExampleProblems()
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
    
    // Can refactor get functions?
    func getSummaryFor(file: FileNumber) -> URLRequest {
        guard let urlRequest = summaries[file] else { fatalError() }
        return urlRequest
    }
    
    func getExplanationFor(file: FileNumber) -> URLRequest {
        guard let urlRequest = explanations[file] else { fatalError() }
        return urlRequest
    }
    
    func getCodeExampleFor(file: FileNumber) -> URLRequest {
        guard let urlRequest = codeExamples[file] else { fatalError() }
        return urlRequest
    }
    
    func getExampleProblemFor(file: FileNumber) -> URLRequest {
        guard let urlRequest = exampleProblems[file] else { fatalError() }
        return urlRequest
    }
    
    
    // Can refactor Load functions?
    func loadSummaries() {
        for file in FileNumber.allCases {
            
            let summaryFile = filePath + "Summary/InsertionSortSummary_" + String(file.rawValue)
            if let summaryURL = Bundle.main.url(forResource: summaryFile, withExtension: "html") {
                summaries[file] = URLRequest(url: summaryURL)
            }
        }
    }
    
    func loadExplanations() {
        for file in FileNumber.allCases {
            let explanationFile = filePath + "Explanation/InsertionSortExplanation_" + String(file.rawValue)
            if let explanationURL = Bundle.main.url(forResource: explanationFile, withExtension: "html") {
                explanations[file] = URLRequest(url: explanationURL)
            }
        }
    }
    
    func loadCodeExamples() {
        for file in FileNumber.allCases {
            let codeExampleFile = filePath + "Code/InsertionSortCode_" + String(file.rawValue)
            if let codeExampleURL = Bundle.main.url(forResource: codeExampleFile, withExtension: "html") {
                codeExamples[file] = URLRequest(url: codeExampleURL)
            }
        }
    }
    
    func loadExampleProblems() {
        for file in FileNumber.allCases {
            let exampleProblemFile = filePath + "Example/InsertionSortExample_" + String(file.rawValue)
            if let exampleProblemURL = Bundle.main.url(forResource: exampleProblemFile, withExtension: "html") {
                exampleProblems[file] = URLRequest(url: exampleProblemURL)
            }
        }
    }
}

