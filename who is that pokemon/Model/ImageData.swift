//
//  ImageData.swift
//  who is that pokemon
//
//  Created by Maria Isabel Torres Torres on 14/12/22.
//

import Foundation

struct ImageData: Codable {
    let sprites: Sprites?
}

struct Sprites: Codable {
    let other: Other?
}

struct Other: Codable {
    let officialArtwork: OfficialArtwork?
    
    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}

struct OfficialArtwork: Codable {
    let frontDefault: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
