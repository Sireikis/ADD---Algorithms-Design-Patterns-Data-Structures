//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation


// Model, Adaptee
class InsertionSort: Content {
    let filePath: String = "www/Algorithms/Sort/InsertionSort/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/InsertionSortSummary_")
        explanations = loadHTMLContentFor(path: "Explanation/InsertionSortExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/InsertionSortCode_")
        exampleProblems = loadHTMLContentFor(path: "Example/InsertionSortExample_")
    }
}
