//
//  BridgePattern.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/4/21.
//

import Foundation


// Model, Adaptee
class BridgePattern: ADDContent {
    let filePath: String = "www/Design Patterns/Structural/Bridge Pattern/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/BridgePatternSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/BridgePatternExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/BridgePatternCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/BridgePatternExample_")
    }
}
