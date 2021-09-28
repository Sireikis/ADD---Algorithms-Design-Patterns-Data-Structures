//
//  ConcreteContent.swift
//  ADD
//
//  Created by Ignas Sireikis on 9/28/21.
//

import Foundation

// Model, Adaptee
class ConcreteContent: ADDContent {
    
    let filePath: String
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init(filePath: String, name: String) {
        
        self.filePath = filePath
        summaries = loadHTMLContentFor(path: "Summary/" + name + "Summary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/" + name + "Explanation_")
        codeExamples = loadHTMLContentFor(path: "Code/" + name + "Code_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/" + name + "Example_")
    }
}
