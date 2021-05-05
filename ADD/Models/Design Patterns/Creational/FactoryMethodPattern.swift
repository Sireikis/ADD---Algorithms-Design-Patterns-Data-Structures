//
//  FactoryMethodPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/4/21.
//

import Foundation


// Model, Adaptee
class FactoryMethodPattern: ADDContent {
    let filePath: String = "www/Design Patterns/Creational/Factory Method Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/FactoryMethodPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/FactoryMethodPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/FactoryMethodPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/FactoryMethodPatternExample_")
    }
}
