//
//  CreationalDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DP stands for Design Pattern
struct CreationalDPMenu: View {
    var body: some View {
        List {
            ForEach(CreationalDP.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Creational", displayMode: .inline)
    }
}

struct CreationalDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        CreationalDPMenu()
    }
}
