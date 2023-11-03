//
//  SortView.swift
//  PokemonAPI
//
//  Created by Macbook Air on 3.11.2023.
//

import UIKit

class SortView: UIView {
    
    private var sortLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.attributedText = NSAttributedString(string: "Sort By:")
        return label
    }()
    
    private var whiteView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        
        setConstraints()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            sortLabel.topAnchor.constraint(equalTo: self.topAnchor , constant: 15),
            sortLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            sortLabel.rightAnchor.constraint(equalTo: self.rightAnchor)
            
        ])
    }

}
