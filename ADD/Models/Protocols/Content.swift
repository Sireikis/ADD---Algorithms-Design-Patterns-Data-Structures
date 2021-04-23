//
//  Content.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation


// First release of App will only use Summaries and CodeExamples, with a single page for both.
// In the future each piece of content will have multiple pages for each section.
protocol Content {
    var filePath: String { get }
    
    var summaries: [FileNumber:URLRequest] { get set }
    var explanations: [FileNumber:URLRequest] { get set }
    var codeExamples: [FileNumber:URLRequest] { get set }
    var exampleProblems: [FileNumber:URLRequest] { get set }
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool
    func getContentIn(file: FileNumber, for content: Page) -> URLRequest
    func loadHTMLContentFor(path: String) -> [FileNumber:URLRequest]
}

extension Content {
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        switch page {
        case .Summary:
            return summaries[file] != nil
        case .Explanation:
            return explanations[file] != nil
        case .Code:
            return codeExamples[file] != nil
        case .Example:
            return exampleProblems[file] != nil
        }
    }
    
    func getContentIn(file: FileNumber, for content: Page) -> URLRequest {
        switch content {
        case .Summary:
            guard let urlRequest = summaries[file] else { fatalError() }
            return urlRequest
        case .Explanation:
            guard let urlRequest = explanations[file] else { fatalError() }
            return urlRequest
        case .Code:
            guard let urlRequest = codeExamples[file] else { fatalError() }
            return urlRequest
        case .Example:
            guard let urlRequest = exampleProblems[file] else { fatalError() }
            return urlRequest
        }
    }
    
    // Given a path to a file, combined with the filePath in the model,
    // will pull all .html files for that content.
    func loadHTMLContentFor(path: String) -> [FileNumber:URLRequest] {
        var content = [FileNumber:URLRequest]()
        
        for file in FileNumber.allCases {
            let fileName = self.filePath + path + String(file.rawValue)
            if let fileURL = Bundle.main.url(forResource: fileName, withExtension: "html") {
                content[file] = URLRequest(url: fileURL)
            }
        }
        return content
    }
}
