//
//  HideKeyboard.swift
//  ADD
//
//  Created by Ignas Sireikis on 5/17/21.
//


import SwiftUI
import UIKit

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
