//
//  DetailsScreenViewModelDelegate.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

protocol DetailsScreenViewModelDelegate : AnyObject {
    func updatePokemon(pokemon: PokemonDetailExtensionDto)
}
