//
//  WhatAreAlgorithms.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class WhatAreAlgorithms: TidBit {
    let filePath: String = "www/Algorithms/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "WhatAreAlgorithms")
    }
}

