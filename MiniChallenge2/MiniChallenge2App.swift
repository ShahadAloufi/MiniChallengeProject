//
//  MiniChallenge2App.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI

@main
struct MiniChallenge2App: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.dark)
        }
    }
}
