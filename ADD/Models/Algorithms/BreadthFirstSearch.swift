//
//  BreadthFirstSearch.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/28/21.
//

import Foundation


// Model, Adaptee
class BreadthFirstSearch: ADDContent {
    let filePath: String = "www/Algorithms/Search/Breadth First Search/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/BreadthFirstSearchSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/BreadthFirstSearchExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/BreadthFirstSearchCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/BreadthFirstSearchExample_")
    }
}
