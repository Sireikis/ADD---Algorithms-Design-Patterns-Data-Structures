//
//  StructuralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct StructuralDPMenu: View {
    let factory: ContentFactory
    
    @State var selection: String?
    
    var body: some View {
        List {
            ForEach(StructuralDP.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getStructuralDPContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Structural", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct StructuralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        StructuralDPMenu(factory: ContentFactory())
    }
}
