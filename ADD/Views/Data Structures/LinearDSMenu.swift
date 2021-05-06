//
//  LinearDSMenu.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/6/21.
//

import SwiftUI


// DS stands for Data Structure
struct LinearDSMenu: View {
    let factory: ContentFactory
    
    @State var selection: String?
    
    var body: some View {
        List {
            ForEach(LinearDS.allCases, id: \.self) { content in
                NavigationLink(
                    destination: LazyView(SimpleDefaultTabView(factory.getLinearDSContent(content))
                                            .navigationBarTitle(content.description, displayMode: .inline)),
                    tag: content.description,
                    selection: $selection
                ) {
                    NavigationButton(description: content.description, image: content.image, imgForeground: content.imgForeground)
                }
            }
        }
        .refreshOnAppear(selection: $selection)
        .navigationBarTitle("Linear", displayMode: .inline)
        .navigationBarItems(trailing: Text("Home"))
    }
}


struct LinearDSMenu_Previews: PreviewProvider {
    static var previews: some View {
        LinearDSMenu(factory: ContentFactory())
    }
}
