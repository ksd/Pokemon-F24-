//
//  PokemonApp.swift
//  Pokemon
//
//  Created by ksd on 07/02/2024.
//

import SwiftUI

@main
struct PokemonApp: App {
    
    @State private var appState = PokemonState()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(appState)
        }
    }
}
