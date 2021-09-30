//
//  Constants.swift
//  ADD
//
//  Created by Ignas Sireikis on 9/29/21.
//

import Foundation
import SwiftUI
import UIKit


enum ADDColor {
    
    static let algorithms: Color = .green
    static let designPatterns: Color = .blue
    static let dataStructures: Color = .red
    
    static let topicText: Color = .white
    static let topicOneRect: Color = .pink
    static let topicTwoRect: Color = .green
}

enum ADDUI {
    
    enum Topic {
        
        static let widthScalingFactor: CGFloat = 2
        static let heightScalingFactor: CGFloat = 7
    }
}

enum SFSymbols {
    
    static let settings = "gearshape"
    static let back = "chevron.left"
    
    static let algorithms = "flowchart"
    static let designPatterns = "checkerboard.rectangle"
    static let dataStructures = "building.columns"
    
    static let search = "magnifyingglass"
    static let sort = "arrow.up.arrow.down"
    
    static let behavioral = "gearshape.2"
    static let creational = "lightbulb"
    static let structural = "square.grid.3x1.below.line.grid.1x2"
    
    static let linear = "arrow.left.and.right"
    static let tree = "leaf"
    static let hashBased = "grid"
    static let graph = "squareshape.controlhandles.on.squareshape.controlhandles"
    
    static let summary = "note.text"
    static let code = "curlybraces"
}
