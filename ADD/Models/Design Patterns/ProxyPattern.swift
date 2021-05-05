//
//  ProxyPattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/5/21.
//

import Foundation


// Model, Adaptee
class ProxyPattern: ADDContent {
    let filePath: String = "www/Design Patterns/Structural/Proxy Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/ProxyPatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/ProxyPatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/ProxyPatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/ProxyPatternExample_")
    }
}
