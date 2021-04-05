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
    
    private var summary: URLRequest?
    private var explanation: URLRequest?
    
    private var summaries = [FileNumber:URLRequest]()
    
    private let codeExamples: [String] = ["Test codeExamples"]
    private let explanations: [String] = ["Test Explanations"]
    private let exampleProblems: [String] = ["Test exampleProblems"]
    

    // Factory Pattern?
    init() {
        loadSummary()
        loadExplanation()
        
        // test
        loadSummaries()
    }
    
    func getSummary() -> URLRequest {
        return summary!
    }
    
    func getExplanation() -> URLRequest {
        return explanation!
    }

    func loadSummary() {
        let summaryFile = filePath + "Summary/InsertionSortSummary_1"
        if let summaryURL = Bundle.main.url(forResource: summaryFile, withExtension: "html") {
            self.summary = URLRequest(url: summaryURL)
        }
    }
    
    func loadExplanation() {
        let explanationFile = filePath + "Explanation/InsertionSortExplanation_1"
        if let explanationURL = Bundle.main.url(forResource: explanationFile, withExtension: "html") {
            self.explanation = URLRequest(url: explanationURL)
        }
    }
    
    // ----------------------------------------------------
    // Trying [FileNumber:URLRequest]() for Alternate Pages
    
    func getSummaryFor(file: FileNumber) -> URLRequest {
        guard let urlRequest = summaries[file] else { fatalError() }
        return urlRequest
    }
    
    func loadSummaries() {
        for file in FileNumber.allCases {
            /*
             print("Printing (file): \(file)")
             print("Printing (type(of: file)): \(type(of: file))")
             print("Printing (file.rawValue): \(file.rawValue)")
             print("Printing (type(of: file.rawValue)): \(type(of: file.rawValue))")
             */
            
            let summaryFile = filePath + "Summary/InsertionSortSummary_" + String(file.rawValue)
            if let summaryURL = Bundle.main.url(forResource: summaryFile, withExtension: "html") {
                summaries[file] = URLRequest(url: summaryURL)
            }
        }
        //print("loadSummaries of Insertion Sort: \(summaries)")
    }
}

