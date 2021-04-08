//
//  HashBasedDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct HashBasedDSMenu: View {
    var body: some View {
        List {
            ForEach(HashBasedDS.allCases, id: \.self) { content in
                NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
            }
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Hash-based", displayMode: .inline)
    }
}

struct HashBasedDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        HashBasedDSMenu()
    }
}
