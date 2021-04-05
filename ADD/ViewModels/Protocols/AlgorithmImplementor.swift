//
//  AlgorithmImplementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation

// Acts as the Implementor of an AlgorithmTemplateAbstraction.
// Acts as the ITarget of an Adapter for some Algorithm (Adaptee)
protocol AlgorithmImplementor {
    //func summary() -> URLRequest
    func getSummaryFor(file: FileNumber) -> URLRequest
    func getExplanationFor(file: FileNumber) -> URLRequest
    func getCodeExampleFor(file: FileNumber) -> URLRequest
    func getExampleProblemFor(file: FileNumber) -> URLRequest
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool
    
    //func codeExample()
    //func explanation() -> URLRequest
    //func exampleProblem()
    
    
    
    //func getExplanationIn(file: FileNumber) -> URLRequest
    
    // Added temporarily to test .rtf
   // var htmlText: NSAttributedString? { get set }
    //func getHTMLText() -> NSAttributedString
}
