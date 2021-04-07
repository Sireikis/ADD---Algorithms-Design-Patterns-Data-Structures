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
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Linear", displayMode: .inline)
    }
}

struct LinearDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        LinearDSMenu()
    }
}
