//
//  WhatAreDesignPatterns.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class WhatAreDesignPatterns: TidBit {
    let filePath: String = "www/Design Patterns/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "WhatAreDesignPatterns")
    }
}
