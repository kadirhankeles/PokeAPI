//
//  PokemonListResponseDto.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation


struct PokemonDto {
    
    let pokemon : PokemonResponseResult
    
    var id : Int {
        if let id = pokemon.url.components(separatedBy: "/").compactMap({ Int($0) }).last {
            return id
        } else {
            return 1
        }
    }
    
    var name : String {
        pokemon.name
    }
    
    var imageUrl: String {
        if let id = pokemon.url.components(separatedBy: "/").compactMap({ Int($0) }).last {
            if id <= AppConstants.limitOWnImageId {
                return AppConstants.baseImageUrl + String(id) + ".png"
            } else {
                return AppConstants.noImageUrl
            }
        } else {
            return AppConstants.noImageUrl
        }
    }
    
}
