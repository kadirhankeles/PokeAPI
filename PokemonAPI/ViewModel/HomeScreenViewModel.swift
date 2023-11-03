//
//  PokemonViewModel.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation


class HomeScreenViewModel {
    
    private let pokemonService : PokemonService
    
    weak var delegate : HomeScreenViewModelDelegate?
    
    var allPokemons: [PokemonDto] = []
    var pagedPokemons: [PokemonDto] = []
    
    var pageNumber = 1
    
    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
        fetchInitalData()
    }
    
    private func fetchInitalData() {
        fetchAllPokemon()
        getPokemonsByPage()
    }
    
    func getPokemonsByPage() {
        fetchPokemonByPageNumber()
    }
    
    private func fetchAllPokemon() {
        
        pokemonService.fetchAllPokemon { result in
            
            switch result {
            case .success(let pokemonList):
                
                self.allPokemons = pokemonList.results.map(PokemonDto.init)
                
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
    
    
    private func fetchPokemonByPageNumber() {
        
        pokemonService.fetchPokemonByPage(pageNumber: pageNumber) { result in
            
            switch result {
            case .success(let pokemonList):
                
                let newPagedPokemons = pokemonList.results.map(PokemonDto.init)
                
                self.pagedPokemons += newPagedPokemons
                
                self.pageNumber = self.pageNumber + 1
                
                self.delegate?.updatePokemonList(pokemonList: self.pagedPokemons)
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
