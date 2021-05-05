//
//  TreeDSEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum TreeDS: String, CaseIterable, Identifiable {
    // Planned content
    // case binarySearchTree, binaryTree, heap
    
    // ADDContent to finish
    // case binarySearchTree, binaryTree, heap
    
    case binarySearchTree, binaryTree, heap
    
    var image: String {
        return "leaf"
    }
    
    var imgForeground: Color {
        return .red
    }
    
    var description: String {
        switch self {
        case .binarySearchTree:
            return "Binary Search Tree"
        case .binaryTree:
            return "Binary Tree"
        case .heap:
            return "Heap"
        }
    }
    
    var id: String {
        rawValue
    }
}
