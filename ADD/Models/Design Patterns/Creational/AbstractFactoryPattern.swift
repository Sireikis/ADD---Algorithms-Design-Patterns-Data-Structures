//
//  AbstractFactoryPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/3/21.
//

import Foundation


// Model, Adaptee
class AbstractFactoryPattern: ADDContent {
    let filePath: String = "www/Design Patterns/Creational/Abstract Factory Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/AbstractFactoryPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/AbstractFactoryPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/AbstractFactoryPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/AbstractFactoryPatternExample_")
    }
}
