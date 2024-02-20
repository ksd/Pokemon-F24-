//
//  PokemonDetail.swift
//  Pokemon
//
//  Created by ksd on 09/02/2024.
//

import SwiftUI

struct PokemonDetail: View {
    
    let pokemon: String
    var body: some View {
        ZStack(alignment: .top) {
            Image(pokemon)
            Text(pokemon)
        }
    }
}

#Preview {
    PokemonDetail(pokemon: "pikachu")
}
