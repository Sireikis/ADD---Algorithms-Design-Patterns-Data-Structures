//
//  TidBitEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import Foundation


enum TidBits {
    // .whatAreClassifications and .glossary not implemented
    
    // Main Page
    case whatIsADD, bigO
    // Algorithms
    case whatAreAlgorithms
    // Design Patterns
    case whatAreDesignPatterns, DPCategories
    // Data Structures
    case whatAreDataStructures, DSCategories
    
    var htmlFilePath: String {
        
        switch self {
        // Main Page
        case .whatIsADD:
            return "www/TidBits/"
        case .bigO:
            return "www/TidBits/"
            
        // Algorithms
        case .whatAreAlgorithms:
            return "www/Algorithms/TidBits/"
            
        // Design Patterns
        case .whatAreDesignPatterns:
            return "www/Design Patterns/TidBits/"
        case .DPCategories:
            return "www/Design Patterns/TidBits/"
            
        // Data Structures
        case .whatAreDataStructures:
            return "www/Data Structures/TidBits/"
        case .DSCategories:
            return "www/Data Structures/TidBits/"
        }
    }
    
    var name: String {
        
        switch self {
        // Main Page
        case .whatIsADD:
            return "WhatIsADD"
        case .bigO:
            return "BigO"
            
        // Algorithms
        case .whatAreAlgorithms:
            return "WhatAreAlgorithms"
            
        // Design Patterns
        case .whatAreDesignPatterns:
            return "WhatAreDesignPatterns"
        case .DPCategories:
            return "DPCategories"
            
        // Data Structures
        case .whatAreDataStructures:
            return "WhatAreDataStructures"
        case .DSCategories:
            return "DSCategories"
        }
    }
}
