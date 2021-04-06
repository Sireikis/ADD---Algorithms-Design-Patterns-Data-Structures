//
//  BehavioralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI

struct BehavioralDPMenu: View {
    var body: some View {
        Form {
            Text("Chain of Responsibility")
            
            Text("Command")
            
            Text("Iterator")
            
            Text("Mediator")
            
            Text("Memento")
            
            Text("Observer")
            
            Text("State")
            
            Text("Strategy")
            
            Text("Template Method")
            
            Text("Visitor")
        }
        .navigationBarItems(trailing: Text("Home"))
        .navigationBarTitle("Behavioral", displayMode: .inline)
    }
}

struct BehavioralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        BehavioralDPMenu()
    }
}
