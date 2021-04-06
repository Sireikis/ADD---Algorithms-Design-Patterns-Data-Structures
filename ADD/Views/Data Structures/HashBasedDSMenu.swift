//
//  HashBasedDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct HashBasedDSMenu: View {
    var body: some View {
        Form {
            Text("Hash List")
            
            Text("Hash Table")
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
