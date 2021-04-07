//
//  LinearDSEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum LinearDS: String, CaseIterable, Identifiable {
    case array, linkedList
    
    var image: String {
        return "arrow.left.and.right"
    }
    
    var imgForeground: Color {
        return .red
    }
    
    var description: String {
        switch self {
        case .array:
            return "Array"
        case .linkedList:
            return "Linked List"
        }
    }
    
    var id: UUID {
        return UUID()
    }
}
