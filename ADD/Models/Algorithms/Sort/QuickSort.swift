//
//  QuickSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/27/21.
//

import Foundation


// Model, Adaptee
class QuickSort: ADDContent {
    let filePath: String = "www/Algorithms/Sort/Quick Sort/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/QuickSortSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/QuickSortExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/QuickSortCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/QuickSortExample_")
    }
}
