//
//  ArrayDSLinear.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/6/21.
//

import Foundation


// Model, Adaptee
class ArrayDSLinear: ADDContent {
    let filePath: String = "www/Data Structures/Linear/Array/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/ArrayDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/ArrayDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/ArrayDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/ArrayDSExample_")
    }
}
