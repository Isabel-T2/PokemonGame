//
//  PokemonData.swift
//  who is that pokemon
//
//  Created by Maria Isabel Torres Torres on 14/12/22.
//

import Foundation

struct PokemonData: Codable{
    let results: [Result]?
}


struct Result: Codable{
    let name : String
    let url : String
}
