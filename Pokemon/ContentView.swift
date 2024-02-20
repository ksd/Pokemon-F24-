//
//  ContentView.swift
//  Pokemon
//
//  Created by ksd on 07/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appState: PokemonState
    
    @State private var selectedPictureIndex = 6
    
    var body: some View {
        Image(appState.pokemons[selectedPictureIndex].name)
            .resizable()
            .scaledToFit()
            .onTapGesture {
                var indexCandidate = Int.random(in: 0..<appState.pokemons.count)
                while indexCandidate == selectedPictureIndex {
                    indexCandidate = Int.random(in: 0..<appState.pokemons.count)
                }
                selectedPictureIndex = indexCandidate
            }
    }
}

#Preview("Content", traits: .sizeThatFitsLayout) {
    ContentView().environmentObject(PokemonState())
}

#Preview(traits: .landscapeLeft, body: {
    ContentView().environmentObject(PokemonState())
})

