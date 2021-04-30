//
//  ObserverPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/30/21.
//

import Foundation


// Model, Adaptee
class ObserverPattern: Content {
    let filePath: String = "www/Design Patterns/Behavioral/Observer Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/ObserverPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/ObserverPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/ObserverPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/ObserverPatternExample_")
    }
}
