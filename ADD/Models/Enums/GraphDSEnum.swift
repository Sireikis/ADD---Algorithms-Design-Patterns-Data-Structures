//
//  GraphDSEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum GraphDS: String, CaseIterable, Identifiable {
    // Planned content
    // case adjacencyList, graph
    
    // Content to finish
    // case adjacencyList, graph
    
    case adjacencyList, graph
    
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
        case .graph:
            return "Graph"
        }
    }
    
    var id: UUID {
        return UUID()
    }
}
