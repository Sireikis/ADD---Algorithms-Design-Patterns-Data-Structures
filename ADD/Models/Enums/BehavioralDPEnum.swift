//
//  BehavioralDPEnum.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


enum BehavioralDP: String, CaseIterable, Identifiable {
    // Planned content
    // case chainOfResponsibility, command, iterator, mediator, memento,
    // observer, state, strategy, templateMethod, visitor
    
    case command, observer, strategy
    
    var image: String {
        return "gearshape.2"
    }
    
    var imgForeground: Color {
        return .blue
    }
    
    var description: String {
        switch self {
//        case .chainOfResponsibility:
//            return "Chain of Responsibility"
        case .command:
            return "Command"
//        case .iterator:
//            return "Iterator"
//        case .mediator:
//            return "Mediator"
//        case .memento:
//            return "Memento"
        case .observer:
            return "Observer"
//        case .state:
//            return "State"
        case .strategy:
            return "Strategy"
//        case .templateMethod:
//            return "Template Method"
//        case .visitor:
//            return "Visitor"
        }
    }
    
    var id: String {
        rawValue
    }
}
