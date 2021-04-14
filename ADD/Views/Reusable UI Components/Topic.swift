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
    
    var rectWidth: CGFloat
    var rectHeight: CGFloat
    
    init(description: String, botDescription: String="", splitDescription: Bool=false,
         rectColor: Color, txtColor: Color, rectWidth: CGFloat=144, rectHeight: CGFloat=72) {
        self.description = description
        self.botDescription = botDescription
        self.splitDescription = splitDescription
        
        self.rectColor = rectColor
        self.txtColor = txtColor
        
        self.rectWidth = rectWidth
        self.rectHeight = rectHeight
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .foregroundColor(rectColor)
                // Use GeometryReader?
                .frame(width: rectWidth, height: rectHeight)
            
            if splitDescription {
                VStack(alignment: .center) {
                    Text(description)
                        .font(.headline)
                        .foregroundColor(txtColor)
                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                    Text(botDescription)
                        .font(.headline)
                        .foregroundColor(txtColor)
                        .shadow(color: .black, radius: 2, x: 2, y: 3)
                }
            } else {
                Text(description)
                    .font(.headline)
                    .foregroundColor(txtColor)
                    .shadow(color: .black, radius: 2, x: 2, y: 3)
            }
        }
    }
}

/*
 struct Topic_Previews: PreviewProvider {
     static var previews: some View {
         Topic()
     }
 }
 */
