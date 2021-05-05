//
//  RefreshOnAppearModifier.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/5/21.
//

import Foundation
import SwiftUI


// https://stackoverflow.com/questions/63934037/swiftui-navigationlink-cell-in-a-form-stays-highlighted-after-detail-pop
// Fixes greyed out NavigationLinks when backtracking through app.
// Also fixes spontaneuos backtracking when selecting NavigationLinks if using
// the .onDisappear method shown in same post.
struct RefreshOnAppearModifier<Tag: Hashable>: ViewModifier {
    @State private var viewId = UUID()
    @Binding var selection: Tag?
    
    func body(content: Content) -> some View {
        content
            .id(viewId)
            .onAppear {
                if selection != nil {
                    viewId = UUID()
                    selection = nil
                }
            }
    }
}

extension View {
    func refreshOnAppear<Tag: Hashable>(selection: Binding<Tag?>? = nil) -> some View {
        modifier(RefreshOnAppearModifier(selection: selection ?? .constant(nil)))
    }
}
