//
//  BinaryTreeDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/7/21.
//

import Foundation


// Model, Adaptee
class BinaryTreeDS: ADDContent {
    let filePath: String = "www/Data Structures/Tree/Binary Tree/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/BinaryTreeDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/BinaryTreeDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/BinaryTreeDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/BinaryTreeDSExample_")
    }
}
