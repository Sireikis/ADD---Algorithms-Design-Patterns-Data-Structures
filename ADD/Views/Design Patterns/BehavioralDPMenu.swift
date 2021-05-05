//
//  BehavioralDPMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


struct BehavioralDPMenu: View {
    let factory: ContentFactory
    
    @State private var selection: String?
    
    var body: some View {
        List {
            ForEach(BehavioralDP.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getBehavioralDPContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Behavioral", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct BehavioralDPMenu_Previews: PreviewProvider {
    static var previews: some View {
        BehavioralDPMenu(factory: ContentFactory())
    }
}
