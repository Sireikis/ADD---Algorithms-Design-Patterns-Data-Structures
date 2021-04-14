//
//  WhatIsADD.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


// Model, Adaptee
class WhatIsADD: TidBit {
    let filePath: String = "www/TidBits/"
    
    var tidBit = [FileNumber:URLRequest]()
    
    init() {
        tidBit = loadHTMLTidBitFor(path: "WhatIsADD")
    }
}
