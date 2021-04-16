//
//  BigO.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/16/21.
//

import Foundation


// Model, Adaptee
class BigO: TidBit {
    let filePath: String = "www/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "BigO")
    }
}
