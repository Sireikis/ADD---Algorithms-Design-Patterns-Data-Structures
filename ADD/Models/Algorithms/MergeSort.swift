//
//  MergeSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/27/21.
//

import Foundation


// Model, Adaptee
class MergeSort: ADDContent {
    let filePath: String = "www/Algorithms/Sort/Merge Sort/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/MergeSortSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/MergeSortExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/MergeSortCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/MergeSortExample_")
    }
}
