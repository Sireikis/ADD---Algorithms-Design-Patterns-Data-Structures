//
//  ContentFactory.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import Foundation

// Factory
class ContentFactory {
    
    func getContent( _ contentType: ContentEnum) -> ContentImplementor {
        let content = ConcreteContent(filePath: contentType.htmlFilePath, name: contentType.name)
        
        return ContentImplementor(content)
    }
    
    func getTidBit(_ tidBit: TidBits) -> TidBitImplementor {
        let content = ConcreteTidBit(filePath: tidBit.htmlFilePath, name: tidBit.name)
        
        return TidBitImplementor(content)
    }
}
