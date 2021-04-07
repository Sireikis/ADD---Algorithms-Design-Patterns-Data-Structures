//
//  StructuralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DP stands for Design Pattern
struct StructuralDPMenu: View {
    var body: some View {
        List {
            ForEach(StructuralDP.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Structural", displayMode: .inline)
    }
}

struct StructuralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        StructuralDPMenu()
    }
}
