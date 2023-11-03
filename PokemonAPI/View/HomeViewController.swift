//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Kadirhan Keles on 3.11.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    var searchPokemonBar : UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()

    lazy var pokemonsCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: Constansts.deviceWidth * 0.5, height: Constansts.deviceHeight * 0.5)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    var viewModel : HomeVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


class HomeVM {
    
}
