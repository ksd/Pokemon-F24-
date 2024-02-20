//
//  PokemonModel.swift
//  Pokemon
//
//  Created by ksd on 20/02/2024.
//

import Foundation

struct PokemonModel: Identifiable {
    var name: String
    let id = UUID().uuidString
}
