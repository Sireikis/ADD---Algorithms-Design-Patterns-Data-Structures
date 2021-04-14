//
//  WhatAreDataStructures.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class WhatAreDataStructures: TidBit {
    let filePath: String = "www/Data Structures/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "WhatAreDataStructures")
    }
}
