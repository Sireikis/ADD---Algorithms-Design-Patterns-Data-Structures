//
//  AdjacencyListDS.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/12/21.
//

import Foundation


// Model, Adaptee
class AdjacencyListDS: ADDContent {
    let filePath: String = "www/Data Structures/Graph/Adjacency List/"
    
    var summaries = [FileNumber:URLRequest]()
    var explanations = [FileNumber:URLRequest]()
    var codeExamples = [FileNumber:URLRequest]()
    var exampleProblems = [FileNumber:URLRequest]()
    
    init() {
        summaries = loadHTMLContentFor(path: "Summary/AdjacencyListDSSummary_")
        // Implemented Later
        // explanations = loadHTMLContentFor(path: "Explanation/AdjacencyListDSExplanation_")
        codeExamples = loadHTMLContentFor(path: "Code/AdjacencyListDSCode_")
        // Implemented Later
        // exampleProblems = loadHTMLContentFor(path: "Example/AdjacencyListDSExample_")
    }
}
