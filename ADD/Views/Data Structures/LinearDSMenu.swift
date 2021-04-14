//
//  LinearDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct LinearDSMenu: View {
    var body: some View {
        List {
            ForEach(LinearDS.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarTitle("Linear", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}

struct LinearDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        LinearDSMenu()
    }
}
