//
//  SingletonPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/3/21.
//

import Foundation


// Model, Adaptee
class SingletonPattern: Content {
    let filePath: String = "www/Design Patterns/Creational/Singleton Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/SingletonPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/SingletonPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/SingletonPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/SingletonPatternExample_")
    }
}
