//
//  LazyView.swift
//  ADD
//
//  Created by Ignas Sireikis on 4/8/21.
//

import SwiftUI

// The view that is wrapped by this will not be initialized when NavigationLinks
// are created in a view. Only when the link is pressed is the view created.
struct LazyView<Content: View>: View {
    
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
}
