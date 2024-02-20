//
//  PokemonDetail.swift
//  Pokemon
//
//  Created by ksd on 09/02/2024.
//

import SwiftUI

struct PokemonDetail: View {
    
    @Binding var pokemon: String
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(pokemon).resizable().aspectRatio(contentMode: .fit)
            Text(pokemon.capitalized).font(.largeTitle).bold()
        }
    }
}

#Preview {
    PokemonDetail(pokemon: .constant("pikachu"))
}
