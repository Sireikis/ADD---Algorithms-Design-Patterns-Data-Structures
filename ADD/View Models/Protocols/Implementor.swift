//
//  Implementor.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import Foundation

// Acts as the Implementor of an TemplateAbstraction.
// Acts as the ITarget of an Adapter for some Adaptee
protocol Implementor {
    // Used by DefaultTabView to enable alternate pages for content types.
    // It is implemented properly in ContentImplementor.
    // Views that use a TidBitImplementor will not use this function.
    // Naming conventions for TidBit files would need to be adjusted to accomodate.
    func isFileAvailable(_ file: FileNumber, for page: Page) -> Bool
    
    func get(_ contentCategory: ContentCategory, in file: FileNumber) -> URLRequest
}
