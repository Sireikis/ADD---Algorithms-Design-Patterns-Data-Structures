//
//  TidBits.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


protocol TidBit {
    var filePath: String { get }
    
    var tidBit: [FileNumber:URLRequest] { get set }
    
    func isFileAvailable(_ file: FileNumber) -> Bool
    func getTidBitIn(file: FileNumber) -> URLRequest
    func loadHTMLTidBitFor(path: String) -> [FileNumber:URLRequest]
}

extension TidBit {
    func isFileAvailable(_ file: FileNumber) -> Bool {
        return tidBit[file] != nil
    }
    
    func getTidBitIn(file: FileNumber) -> URLRequest {
        guard let urlRequest = tidBit[file] else { fatalError() }
        return urlRequest
    }
    
    // Given a path to a file, combined with the filePath in the model,
    // will pull the .html file for that content.
    func loadHTMLTidBitFor(path: String) -> [FileNumber:URLRequest] {
        var tidBit = [FileNumber:URLRequest]()
        
        let fileName = self.filePath + path
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: "html") {
            tidBit[FileNumber.one] = URLRequest(url: fileURL)
        }
        
        return tidBit
    }
}
