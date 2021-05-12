//
//  HashTableDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/11/21.
//

import Foundation


// Model, Adaptee
class HashTableDS: ADDContent {
    let filePath: String = "www/Data Structures/Hash-based/Hash Table/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/HashTableDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/HashTableDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/HashTableDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/HashTableDSExample_")
    }
}
