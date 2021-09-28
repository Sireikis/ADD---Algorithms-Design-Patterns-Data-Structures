//
//  ConcreteTidBit.swift
//  ADD
//
//  Created by Ignas Sireikis on 9/28/21.
//

import Foundation

class ConcreteTidBit: TidBit {
    
    var filePath: String
    var tidBit = [FileNumber:URLRequest]()
    
    init(filePath: String, name: String) {
        
        self.filePath = filePath
        tidBit = loadHTMLTidBitFor(path: name)
    }
}
