//
//  PokemonRow.swift
//  Pokemon
//
//  Created by ksd on 09/02/2024.
//

import SwiftUI

struct PokemonRow: View {
    
    @Binding var pokemonName: String
    
    var body: some View {
        
        NavigationLink(destination: PokemonDetail(pokemon: pokemonName)) {
            HStack {
                Image(pokemonName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text(pokemonName)
                    .font(.headline)
            }
        }
    }
}

#Preview {
    NavigationStack{
        PokemonRow(pokemonName: .constant("pikachu"))
    }
}
