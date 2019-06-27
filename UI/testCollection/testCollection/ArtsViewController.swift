//
//  ArtsViewController.swift
//  testCollection
//
//  Created by Nico on 22/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import UIKit

class ArtsViewController: UIViewController {
    @IBOutlet weak var collectionView:UICollectionView!
    
    var arts = [Art(image: #imageLiteral(resourceName: "herbe"), title: "Yo man!", trivia: "Blablahblah 99"),
        Art(image: #imageLiteral(resourceName: "joconde"), title: "La Joconde", trivia: "Blablahblah"),
        Art(image: #imageLiteral(resourceName: "herbe"), title: "Yo man!", trivia: "Blablahblah 99")]
    let image = #imageLiteral(resourceName: <#T##String#>)
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        collectionView.dataSource = self
        
        collectionView.layer.borderColor = UIColor.red.cgColor
        collectionView.layer.borderWidth = 2.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
        
        // try to select the second one
        collectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .centeredHorizontally, animated: false)
    }
}

extension ArtsViewController:UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainArtCollectionViewCell", for: indexPath) as! ArtCollectionViewCell
        let art = arts[indexPath.item]
        
        cell.art = art
        return cell
    }
}
