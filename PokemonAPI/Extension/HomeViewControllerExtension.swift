//
//  HomeVCExtension.swift
//  PokemonAPI
//
//  Created by Macbook Air on 3.11.2023.
//

import UIKit

extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pagedPokemons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokemonCVC", for: indexPath) as! PokemonCVC
        cell.configure(with: pagedPokemons[indexPath.row])
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //TODO: Fetch in every %80 percent scroll
    }
    
}

extension HomeViewController {
    func initialConfig(){
        
        let dissmissKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        view.addGestureRecognizer(dissmissKeyboardGesture)
        
        let logoImage = UIImage(named: "pokeball")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        let barLogo = UIBarButtonItem(image: logoImage, style: .plain, target: self, action: nil)
        barLogo.imageInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        let appTitle = UIBarButtonItem(title: "Pokédex", style: .plain, target: self, action: nil)
        appTitle.setTitleTextAttributes([.foregroundColor : UIColor.white, .font : UIFont.systemFont(ofSize: 22, weight: .bold)], for: .normal)
        appTitle.imageInsets = UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 0)
        
        
        navigationController?.navigationBar.topItem?.leftBarButtonItems = [barLogo,appTitle]
        whiteView.addSubview(pokemonsCollectionView)
        view.addSubviews([searchPokemonBar,whiteView,sortButton,sortView])
        
        pokemonsCollectionView.delegate = self
        pokemonsCollectionView.dataSource = self
        pokemonsCollectionView.register(PokemonCVC.self, forCellWithReuseIdentifier: "pokemonCVC")
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            searchPokemonBar.topAnchor.constraint(equalTo: (navigationController?.navigationBar.bottomAnchor)!,constant: 20),
            searchPokemonBar.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10),
            searchPokemonBar.widthAnchor.constraint(equalToConstant: view.frame.width * 0.85),
            
            
            whiteView.topAnchor.constraint(equalTo: searchPokemonBar.bottomAnchor),
            whiteView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 10),
            whiteView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -10),
            
            pokemonsCollectionView.topAnchor.constraint(equalTo: whiteView.topAnchor,constant: 25),
            pokemonsCollectionView.leftAnchor.constraint(equalTo: whiteView.leftAnchor,constant: 15),
            pokemonsCollectionView.rightAnchor.constraint(equalTo: whiteView.rightAnchor,constant: -15),
            pokemonsCollectionView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor,constant: -10),
            
            
            sortButton.topAnchor.constraint(equalTo: searchPokemonBar.searchTextField.topAnchor),
            sortButton.leftAnchor.constraint(equalTo: searchPokemonBar.rightAnchor,constant: 5),
            sortButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -10),
            sortButton.heightAnchor.constraint(equalToConstant: 40),
            sortButton.widthAnchor.constraint(equalToConstant: 40),
            
            sortView.topAnchor.constraint(equalTo: sortButton.bottomAnchor , constant: 10),
            sortView.rightAnchor.constraint(equalTo: sortButton.rightAnchor , constant: -10),
            sortView.heightAnchor.constraint(equalToConstant: view.frame.height * 0.2),
            sortView.widthAnchor.constraint(equalToConstant: view.frame.width * 0.4)
        ])
    }
    
    
    @objc
    func sortButtonPressed(){
        
        let sortViewState = self.sortView.isHidden
        
        
        DispatchQueue.main.async { [weak self] in
            
            guard let self else {  return  }
            self.sortView.isHidden = !sortViewState
        }
            
    }

    
    @objc
    func dissmissKeyboard(){
        view.endEditing(true)
    }
    
}

extension HomeViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if let searchedText = searchBar.text , searchedText.count > 2 {
//            searchedPokemons = pokemons.filter { pokemon in
//                
//                
//                let searchedLowerText = searchedText.lowercased()
//                return pokemon.name.lowercased().contains(searchedLowerText) || pokemon.id.lowercased() == searchedLowerText
//
//            }
//            
//            dump(searchedPokemons)
//        }else {
//            searchedPokemons = pokemons
//        }
//        
//        DispatchQueue.main.async { [weak self] in
//            self?.pokemonsCollectionView.reloadData()
//        }
        
    }
}


extension HomeViewController : SortViewProtocol {
    
    
    func sortTypeChanged(newType: SortTypes) {
        switch newType {
        case .name:
            break
            //TODO: viewModel.sortByName
        case .number:
            break
            //TODO: viewModel.sortById
        }
    }
}


