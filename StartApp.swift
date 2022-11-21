//
//  TicTacToeSwiftUIApp.swift
//  TicTacToeSwiftUI
//
//  Created by Jonas Wåhslén on 2021-11-18.
//

import SwiftUI

@main
struct StartApp: App {
    @StateObject private var theViewModel = NbackVM()
    @StateObject private var set = Set()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(theViewModel)
                .environmentObject(set)
        }
    }
}
