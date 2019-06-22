//
//  MainArtCollectionViewCell.swift
//  testCollection
//
//  Created by Nico on 22/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ArtCollectionViewCell : UICollectionViewCell {
    @IBOutlet weak var featuredImageView:UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var triviaLabel: UILabel!
    
    var art: Art! {
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI() {
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 1.0
        
        if let art = art {
            featuredImageView.image = art.image
            titleLabel.text = art.title
            triviaLabel.text = art.trivia
        } else {
            featuredImageView.image = nil
            titleLabel.text = nil
            triviaLabel.text = nil
        }
        
        
    }
}
