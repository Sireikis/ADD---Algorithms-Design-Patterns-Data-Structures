//
//  BehavioralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DP stands for Design Pattern
struct BehavioralDPMenu: View {
    var body: some View {
        List {
            ForEach(BehavioralDP.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarTitle("Behavioral", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct BehavioralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        BehavioralDPMenu()
    }
}
