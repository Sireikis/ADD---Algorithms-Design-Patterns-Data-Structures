//
//  CreationalDPEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum CreationalDP: String, CaseIterable, Identifiable {
    // Planned content
    // case abstractFactory, builder, factoryMethod, prototype, singleton
    
    case abstractFactory, factoryMethod, singleton
    
    var image: String {
        return "lightbulb"
    }
    
    var imgForeground: Color {
        return .blue
    }
    
    var description: String {
        switch self {
        case .abstractFactory:
            return "Abstract Factory"
//        case .builder:
//            return "Builder"
        case .factoryMethod:
            return "Factory Method"
//        case .prototype:
//            return "Prototype"
        case .singleton:
            return "Singleton"
        }
    }
    
    var id: String {
        rawValue
    }
}


