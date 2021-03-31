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
    func summary() -> NSAttributedString
    func bigO() -> String
    func codeExample()
    func explanation()
    func exampleProblem()
    
    // Added temporarily to test .rtf
   // var htmlText: NSAttributedString? { get set }
    //func getHTMLText() -> NSAttributedString
}
