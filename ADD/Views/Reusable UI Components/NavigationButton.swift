//
//  NavigationButton.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/7/21.
//

import SwiftUI


struct NavigationButton: View {
    var description: String
    var txtColor: Color = .black
    
    var image: String
    var imgForeground: Color = .black
    var imgBackground: Color = .clear

    var body: some View {
        HStack {
            Image(systemName: image)
                .frame(width: 25, height: 25)
                .foregroundColor(imgForeground)
                .background(imgBackground)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
            Text(description)
                .foregroundColor(txtColor)
        }
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(description: "test", image: "gear", imgBackground: .gray)
    }
}
