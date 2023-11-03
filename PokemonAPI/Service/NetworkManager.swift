//
//  NetworkService.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

protocol NetworkManager {
    func fetchAllPokemon() async throws -> [PokemonListResponse]
    func fetchPokemonByPage(_ pageNumber : String) async throws -> [PokemonListResponse]
    func fetchPokemonDetail(_ pokemonId: Int) async throws -> [PokemonDetail]
    func fetchPokemonspecies(_ speciesId: Int) async throws -> [PokemonSpecies]
}
