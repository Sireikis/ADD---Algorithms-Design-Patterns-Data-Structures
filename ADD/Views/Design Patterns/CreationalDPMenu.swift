//
//  CreationalDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct CreationalDPMenu: View {
    let factory: ContentFactory
    
    @State var selection: String? = nil
    
    var body: some View {
        List {
            ForEach(CreationalDP.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getCreationalDPContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
                .onDisappear {
                    self.selection = nil
                }
            }
        }
        .id("idList")
        .navigationBarTitle("Creational", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct CreationalDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        CreationalDPMenu(factory: ContentFactory())
    }
}
