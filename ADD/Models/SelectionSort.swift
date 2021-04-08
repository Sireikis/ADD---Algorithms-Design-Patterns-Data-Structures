//
//  SelectionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/8/21.
//

import Foundation


// Model, Adaptee
class SelectionSort: Content {
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



