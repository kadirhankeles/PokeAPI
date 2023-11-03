//
//  PokemonViewModelOutput.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

protocol PokemonViewModelDelegate: AnyObject{
    func updatePokemonAllList(pokemonList: [PokemonDto])
}
