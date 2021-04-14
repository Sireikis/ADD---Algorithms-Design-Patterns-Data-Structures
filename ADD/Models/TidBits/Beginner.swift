//
//  Beginner.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class Beginner: TidBit {
    let filePath: String = "www/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "Beginner")
    }
}
