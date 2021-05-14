//
//  GraphDSEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum GraphDS: String, CaseIterable, Identifiable {
    case adjacencyList
    
    var image: String {
        return "squareshape.controlhandles.on.squareshape.controlhandles"
    }
    
    var imgForeground: Color {
        return .red
    }
    
    var description: String {
        switch self {
        case .adjacencyList:
            return "Adjacency List"
        }
    }
    
    var id: String {
        rawValue
    }
}
