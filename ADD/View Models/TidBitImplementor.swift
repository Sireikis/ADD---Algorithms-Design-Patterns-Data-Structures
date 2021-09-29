//
//  TidBitImplementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation

// ViewModel, Concrete Implementor + Adapter
class TidBitImplementor: Implementor {
    
    private let instance: TidBit
    
    init(_ i: TidBit) {
        self.instance = i
    }
    
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool {
        return instance.isFileAvailable(file)
    }
    
    func get(_ contentCategory: ContentCategory, in file: FileNumber) -> URLRequest {
        switch contentCategory {
        case .tidBit:
            // Currently no plans for tidbits to have alternate versions.
            // Thus, techincally this could ignore the file variable
            // and just call .one (so views can't mess up).
            return instance.getTidBitIn(file: .one)
            // Should never be called
        default:
            // Views that call unexpected content get the tidBit file
            return instance.getTidBitIn(file: .one)
        }
    }
}
