//
//  BinarySearchTreeDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/7/21.
//

import Foundation


// Model, Adaptee
class BinarySearchTreeDS: ADDContent {
    let filePath: String = "www/Data Structures/Tree/Binary Search Tree/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/BinarySearchTreeDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/BinarySearchTreeDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/BinarySearchTreeDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/BinarySearchTreeDSExample_")
    }
}
