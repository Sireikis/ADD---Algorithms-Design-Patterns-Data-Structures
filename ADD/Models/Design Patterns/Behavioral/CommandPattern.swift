//
//  CommandPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/5/21.
//

import Foundation


// Model, Adaptee
class CommandPattern: ADDContent {
    let filePath: String = "www/Design Patterns/Behavioral/Command Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/CommandPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/CommandPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/CommandPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/CommandPatternExample_")
    }
}
