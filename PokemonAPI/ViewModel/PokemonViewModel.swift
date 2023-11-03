//
//  PokemonViewModel.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation


class PokemonViewModel {
    
    private let pokemonService : PokemonService
    
    weak var delegate : PokemonViewModelDelegate?
    
    var allPokemons: [PokemonDto] = []
    
    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
    }
    
    
    func fetchAllPokemon() {
        
        pokemonService.fetchAllPokemon { result in
            
            switch result {
            case .success(let pokemonList):
                
                self.allPokemons = pokemonList.results.map(PokemonDto.init)
                
                self.delegate?.updatePokemonAllList(pokemonList: self.allPokemons)
            case .failure(let error):
                switch error {
                case .urlError:
                    print("There is an error in the url")
                case .decodingError:
                    print("There is an Error in Model or JSON data")
                case .serverError:
                    print("There is a problem with the server")
                }
            }
            
        }
    }
    
}
