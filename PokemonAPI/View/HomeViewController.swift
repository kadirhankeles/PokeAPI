//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Kadirhan Keles on 3.11.2023.
//

import UIKit

class HomeViewController: UIViewController, PokemonViewModelDelegate {
    
    
    private let viewModel : PokemonViewModel
    
    init(viewModel : PokemonViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updatePokemonAllList(pokemonList: [PokemonDto]) {
        print(pokemonList[0].id)
        print(pokemonList[0].name)
        print(pokemonList[0].imageUrl)
    }
    
    
    private var searchPokemonBar : UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        viewModel.fetchAllPokemon()
        
    }
    
    


}

