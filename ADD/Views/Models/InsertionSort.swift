//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation
import SwiftUI

// Adaptee
// Acts as a model?
class InsertionSort {
    private var summary: NSAttributedString?
    
    private let bigO: String = "BigO of N"
    
    private let codeExamples: [String] = ["Test codeExamples"]
    private let explanations: [String] = ["Test Explanations"]
    private let exampleProblems: [String] = ["Test exampleProblems"]
    
    func getSummary() -> NSAttributedString {
        if let summary = summary {
            return summary
        } else {
            return NSAttributedString(string: "Error getting HTML")
        }
    }
    
    func getBigO() -> String {
        return bigO
    }
    
    init() {
        loadHTML(file: "InsertionSortSummary_1")
    }
    
    // Causes a cycle error
    func loadHTML(file: String) {
        if let rtfPath = Bundle.main.url(forResource: file, withExtension: "rtf") {
            DispatchQueue.main.async {
                do {
                    let attributedStringWithRTF: NSAttributedString =
                        try NSAttributedString(url: rtfPath,
                                               options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf],
                                               documentAttributes: nil)
                    //let htmlData = attributedStringWithRTF.string.data(using: .utf8)
                    let htmlString = attributedStringWithRTF.string
                    if let htmlData = htmlString.data(using:.utf8) {
                        let finalAttributedString = try NSAttributedString(data: htmlData, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
                        
                        
                        self.summary = finalAttributedString
                    }
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
        } else {
            print("File not found.")
        }
    }
    
    /*
     let rtfPath = Bundle.main.url(forResource: "SampleHTML", withExtension: "rtf")
     let attributedStringWithRtf: NSAttributedString = NSAttributedString(url: rtfPath, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
     let htmlString = attributedStringWithRtf.string
     let htmlData = htmlString.data(using:.utf8)
     let attributedString: NSAttributedString = NSAttributedString(data: htmlData, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
     */
}
