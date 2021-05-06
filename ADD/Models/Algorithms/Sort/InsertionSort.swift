//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation


// Model, Adaptee
class InsertionSort: ADDContent {
    let filePath: String = "www/Algorithms/Sort/Insertion Sort/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/InsertionSortSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/InsertionSortExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/InsertionSortCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/InsertionSortExample_")
    }
}
