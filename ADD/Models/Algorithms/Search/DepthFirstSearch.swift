//
//  DepthFirstSearch.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/29/21.
//

import Foundation


// Model, Adaptee
class DepthFirstSearch: ADDContent {
    let filePath: String = "www/Algorithms/Search/Depth First Search/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/DepthFirstSearchSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/DepthFirstSearchExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/DepthFirstSearchCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/DepthFirstSearchExample_")
    }
}
