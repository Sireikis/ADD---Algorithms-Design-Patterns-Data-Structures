//
//  WhatAreClassifications.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class WhatAreClassifications: TidBit {
    let filePath: String = "www/Algorithms/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "WhatAreClassifications")
    }
}
