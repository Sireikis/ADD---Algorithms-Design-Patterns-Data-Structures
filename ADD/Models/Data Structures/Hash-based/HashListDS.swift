//
//  HashListDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/11/21.
//

import Foundation


// Model, Adaptee
class HashListDS: ADDContent {
    let filePath: String = "www/Data Structures/Hash-based/Hash List/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/HashListDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/HashListDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/HashListDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/HashListDSExample_")
    }
}
