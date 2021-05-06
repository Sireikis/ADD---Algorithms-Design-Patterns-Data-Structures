//
//  BinarySearch.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/28/21.
//

import Foundation


// Model, Adaptee
class BinarySearch: ADDContent {
    let filePath: String = "www/Algorithms/Search/Binary Search/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/BinarySearchSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/BinarySearchExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/BinarySearchCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/BinarySearchExample_")
    }
}
