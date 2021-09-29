//
//  Topic.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import SwiftUI

// Gain button-like animation when nested in NavigationLink
struct Topic: View {
    
    enum Constants {
        
        static let width: CGFloat = 144
        static let height: CGFloat = 72
        
        static let cornerRadius: CGFloat = 10
        
        static let shadowColor: Color = .black
        static let shadowRadius: CGFloat = 2
        static let shadowX: CGFloat = 2
        static let shadowY: CGFloat = 3
        
        static let fontScalingFactor: CGFloat = 0.05
    }
    
    var description: String
    var botDescription: String
    var splitDescription: Bool
    
    var rectColor: Color
    var txtColor: Color
    
    var size: CGSize
    var rectWidth: CGFloat
    var rectHeight: CGFloat
    
    init(
        description: String,
        botDescription: String = "",
        splitDescription: Bool = false,
        rectColor: Color,
        txtColor: Color,
        size: CGSize,
        rectWidth: CGFloat = Constants.width,
        rectHeight: CGFloat = Constants.height
    ) {
        self.description = description
        self.botDescription = botDescription
        self.splitDescription = splitDescription
        
        self.rectColor = rectColor
        self.txtColor = txtColor
        
        self.size = size
        self.rectWidth = rectWidth
        self.rectHeight = rectHeight
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: Constants.cornerRadius, style: .circular)
                .foregroundColor(rectColor)
            
            if splitDescription {
                VStack(alignment: .center) {
                    Text(description)
                        .font(.system(size: fontSize(for: size), design: .serif))
                        .foregroundColor(txtColor)
                        .shadow(
                            color: Constants.shadowColor,
                            radius: Constants.shadowRadius,
                            x: Constants.shadowX,
                            y: Constants.shadowY)
                    Text(botDescription)
                        .font(.system(size: fontSize(for: size), design: .serif))
                        .foregroundColor(txtColor)
                        .shadow(
                            color: Constants.shadowColor,
                            radius: Constants.shadowRadius,
                            x: Constants.shadowX,
                            y: Constants.shadowY)
                }
            } else {
                Text(description)
                    .font(.system(size: fontSize(for: size), design: .serif))
                    .foregroundColor(txtColor)
                    .shadow(
                        color: Constants.shadowColor,
                        radius: Constants.shadowRadius,
                        x: Constants.shadowX,
                        y: Constants.shadowY)
            }
        }
        .frame(
            minWidth: Constants.width,
            idealWidth: rectWidth,
            minHeight: Constants.height,
            idealHeight: rectHeight)
    }
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * Constants.fontScalingFactor
    }
}
