//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Mehmet Emin Ak on 3.11.2023.
//

import UIKit

class HomeViewController: UIViewController  {
    
    lazy var searchPokemonBar : UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.backgroundColor = .white
        searchBar.delegate = self
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search Pokemon",attributes: [
            .font : UIFont.systemFont(ofSize: 15),
            .foregroundColor : UIColor.darkGray
        ])
        let newImage = searchBar.searchTextField.leftView as! UIImageView
        newImage.image?.withTintColor(.red, renderingMode: .alwaysOriginal)
        searchBar.searchTextField.leftView = newImage
        return searchBar
    }()
    
    var pokemonsCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: Constansts.deviceWidth * 0.25, height: Constansts.deviceHeight * 0.15)
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    
    var whiteView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.gray.cgColor
        return view
    }()
    
    lazy var sortView : SortView = {
        let view = SortView()
        view.mainController = self
        view.isHidden = true
        view.layer.zPosition = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var sortButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setAttributedTitle(NSAttributedString(string: "#",attributes: [
            .foregroundColor : UIColor.red,
            .font : UIFont.systemFont(ofSize: 16)
        ]), for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(sortButtonPressed), for: .touchUpInside)
        button.backgroundColor = .white
        return button
    }()
    
    
    //This data will be come from api for now dummy
    let pokemons = [
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Pikachu", id: "#4526", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Gvily", id: "#8525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Ramson", id: "#9525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
    ]
    
    var searchedPokemons = [
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Pikachu", id: "#4526", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Gvily", id: "#8525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Ramson", id: "#9525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
        Pokemon(name: "Balbasour", id: "#4525", imageUrl: "https://pokemonmasterpmn.net/img/pokedex/pokemon/1.png"),
    ]
    
    
    var viewModel : HomeVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialConfig()
        view.backgroundColor = UIColor(hex: "#DC0A2D", alpha: 1)
        
    }

    
    override func viewDidLayoutSubviews() {
        setConstraints()
    }
}


class HomeVM {
    
}

