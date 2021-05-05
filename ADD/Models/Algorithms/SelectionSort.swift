//
//  SelectionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/8/21.
//

import Foundation


// Model, Adaptee
class SelectionSort: ADDContent {
    let filePath: String = "www/Algorithms/Sort/Selection Sort/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/SelectionSortSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/SelectionSortExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/SelectionSortCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/SelectionSortExample_")
    }
}



