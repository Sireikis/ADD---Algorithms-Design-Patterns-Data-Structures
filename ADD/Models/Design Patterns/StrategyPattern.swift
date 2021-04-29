//
//  StrategyPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/29/21.
//

import Foundation


// Model, Adaptee
class StrategyPattern: Content {
    let filePath: String = "www/Design Patterns/Behavioral/Strategy Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/StrategyPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/StrategyPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/StrategyPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/StrategyPatternExample_")
    }
}
