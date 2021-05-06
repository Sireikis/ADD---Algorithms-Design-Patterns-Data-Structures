//
//  DecoratorPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/4/21.
//

import Foundation


// Model, Adaptee
class DecoratorPattern: ADDContent {
    let filePath: String = "www/Design Patterns/Structural/Decorator Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/DecoratorPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/DecoratorPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/DecoratorPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/DecoratorPatternExample_")
    }
}
