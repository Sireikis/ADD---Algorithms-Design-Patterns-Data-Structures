//
//  ADDApp.swift
//  ADD
//
//  Created by Ignas Sireikis on 3/30/21.
//

import SwiftUI


@main
struct ADDApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainMenu()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(SingleWebView())
        }
    }
}
