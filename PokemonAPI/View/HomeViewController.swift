//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Kadirhan Keles on 3.11.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var searchPokemonBar : UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}

