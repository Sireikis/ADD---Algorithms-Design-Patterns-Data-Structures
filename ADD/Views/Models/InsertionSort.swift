//
//  InsertionSort.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation
import SwiftUI

// Change this so that summary, bigO, etc point to .html files.
// They should be strings and are just filenames.

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
    
    // File loaded on init, and NOT cached. Need to change.
    // Need to have a Model that holds cached info.
    // Factory?
    // Check if CachedModel is nil, loadHTML, else retreive cached info.
    init() {
        //loadRTF(file: "InsertionSortSummary_1")
        loadRTF(file: "InsertionSortExplained_1")
        //loadRTF(file: "TestHTML")
    }
    
    // Causes a cycle error
    // Need to delete
    func loadRTF(file: String) {
        if let rtfPath = Bundle.main.url(forResource: file, withExtension: "rtf") {
            DispatchQueue.main.async {
                do {
                    let attributedStringWithRTF: NSAttributedString =
                        try NSAttributedString(url: rtfPath,
                                               options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf],
                                               documentAttributes: nil)
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
}
