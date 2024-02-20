//
//  PokemonState.swift
//  Pokemon
//
//  Created by ksd on 20/02/2024.
//

import Foundation


class PokemonState: ObservableObject {
    @Published var pokemons = [
        PokemonModel(name: "rattata"),
        PokemonModel(name: "bulbasaur"),
        PokemonModel(name: "charmander"),
        PokemonModel(name: "growlithe"),
        PokemonModel(name: "jigglypuff"),
        PokemonModel(name: "meowth"),
        PokemonModel(name: "pikachu"),
        PokemonModel(name: "squirtle")
    ]
}


