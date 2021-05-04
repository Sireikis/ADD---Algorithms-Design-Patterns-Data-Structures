//
//  StructuralDPEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum StructuralDP: String, CaseIterable, Identifiable {
    // Planned content
    // case adapter, bridge, composite, decorator, facade, flyweight, proxy
    
    // Content to finish
    // case adapter, bridge, decorator, facade, proxy
    
    case adapter, bridge, decorator
    
    var image: String {
        return "square.grid.3x1.below.line.grid.1x2"
    }
    
    var imgForeground: Color {
        return .blue
    }
    
    var description: String {
        switch self {
        case .adapter:
            return "Adapter"
        case .bridge:
            return "Bridge"
//        case .composite:
//            return "Composite"
        case .decorator:
            return "Decorator"
//        case .facade:
//            return "Facade"
//        case .flyweight:
//            return "Flyweight"
//        case .proxy:
//            return "Proxy"
        }
    }
    
    var id: UUID {
        return UUID()
    }
}
