//
//  NetworkService.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

final class NetworkService :  NetworkManager {
    
    static let shared = NetworkService()
    
    private struct Constants {
        static let baseURL = AppConstants.baseUrl
    }
    
    static let allPokemonQuery = "?limit=" + String(AppConstants.allPokemonCount)
    static let paginationLimitQuery = "&limit=" + String(AppConstants.pageSize)
    
    
    enum endpoints: String {
        case pokemon = "pokemon/"
        case pokemonSpecies = "pokemon-species/"
    }
    
    enum ServiceError : Error {
        case serverError
        case decodingError
        case urlError
    }
    
    private init() {}

    
    func fetchAllPokemon() async throws -> [PokemonListResponse] {
        <#code#>
    }
    
    func fetchPokemonByPage(_ pageNumber: String) async throws -> [PokemonListResponse] {
        <#code#>
    }
    
    func fetchPokemonDetail(_ pokemonId: Int) async throws -> [PokemonDetail] {
        <#code#>
    }
    
    func fetchPokemonspecies(_ speciesId: Int) async throws -> [PokemonSpecies] {
        <#code#>
    }
    
    
}

