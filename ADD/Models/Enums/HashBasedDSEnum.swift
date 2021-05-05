//
//  HashBasedDSEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum HashBasedDS: String, CaseIterable, Identifiable {
    // Planned content
    // case hashList, hashTable
    
    // ADDContent to finish
    // case hashList, hashTable
    
    case hashList, hashTable
    
    var image: String {
        return "grid"
    }
    
    var imgForeground: Color {
        return .red
    }
    
    var description: String {
        switch self {
        case .hashList:
            return "Hash List"
        case .hashTable:
            return "Hash Table"
        }
    }
    
    var id: String {
        rawValue
    }
}
