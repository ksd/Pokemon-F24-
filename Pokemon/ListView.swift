//
//  ListView.swift
//  Pokemon
//
//  Created by ksd on 07/02/2024.
//

import SwiftUI

struct ListView: View {

    @EnvironmentObject var appState: PokemonState
    
    var body: some View {
        List {
            ForEach($appState.pokemons){ $pokemon in
                PokemonRow(pokemonName: $pokemon.name)
            }
            .onDelete(perform: { indexSet in
                appState.pokemons.remove(atOffsets: indexSet)
            })
            .navigationTitle("Pokémon")
            .listRowSeparator(.hidden)
        }
        
    }
    
}

#Preview {
    NavigationStack{
        ListView().environmentObject(PokemonState())
    }
}
