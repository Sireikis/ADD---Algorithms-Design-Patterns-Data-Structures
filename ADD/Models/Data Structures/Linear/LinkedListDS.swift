//
//  LinkedListDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/6/21.
//

import Foundation


// Model, Adaptee
class LinkedListDS: ADDContent {
    let filePath: String = "www/Data Structures/Linear/Linked List/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/LinkedListDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/LinkedListDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/LinkedListDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/LinkedListDSExample_")
    }
}
