//
//  MiniChallenge2App.swift
//  MiniChallenge2
//
//  Created by shahadmufleh on 22/01/2022.
//

import SwiftUI
import Firebase 

@main
struct MiniChallenge2App: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
            .environment(\.sizeCategory, .extraSmall)
            .preferredColorScheme(.light)
        }
    }
}
