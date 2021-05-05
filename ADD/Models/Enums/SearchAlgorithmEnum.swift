//
//  SearchAlgorithmEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum SearchAlgorithm: String, CaseIterable, Identifiable {
    // Planned content
    // case leeAlgorithm
    
    case binarySearch, breadthFirstSearch, depthFirstSearch
    
    var image: String {
        return "magnifyingglass"
    }
    
    var imgForeground: Color {
        return .green
    }
    
    var description: String {
        switch self {
        case .binarySearch:
            return "Binary Search"
        case .breadthFirstSearch:
            return "Breadth First Search"
        case .depthFirstSearch:
            return "Depth First Search"
        }
    }
    
    var id: String {
        rawValue
    }
}
