//
//  Topic.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/14/21.
//

import SwiftUI


// Gain button-like animation when nested in NavigationLink
struct Topic: View {
    var description: String
    var botDescription: String
    var splitDescription: Bool
    
    var rectColor: Color
    var txtColor: Color
    
    var size: CGSize
    var rectWidth: CGFloat
    var rectHeight: CGFloat
    
    init(description: String, botDescription: String="", splitDescription: Bool=false,
         rectColor: Color, txtColor: Color, size: CGSize, rectWidth: CGFloat=144, rectHeight: CGFloat=72) {
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
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .foregroundColor(rectColor)
            
            if splitDescription {
                VStack(alignment: .center) {
                    Text(description)
                        .font(.system(size: fontSize(for: size), design: .serif))
                        .foregroundColor(txtColor)
                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                    Text(botDescription)
                        .font(.system(size: fontSize(for: size), design: .serif))
                        .foregroundColor(txtColor)
                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                }
            } else {
                Text(description)
                    .font(.system(size: fontSize(for: size), design: .serif))
                    .foregroundColor(txtColor)
                    .shadow(color: .black, radius: 2, x: 2, y: 3)
            }
        }
        .frame(minWidth: 144, idealWidth: rectWidth, minHeight: 72, idealHeight: rectHeight)
    }
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.05
    }
}
