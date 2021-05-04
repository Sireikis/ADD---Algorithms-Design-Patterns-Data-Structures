//
//  AdapterPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/4/21.
//

import Foundation


// Model, Adaptee
class AdapterPattern: Content {
    let filePath: String = "www/Design Patterns/Structural/Adapter Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/AdapterPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/AdapterPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/AdapterPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/AdapterPatternExample_")
    }
}
