//
//  ViewController.swift
//  Bitspark
//
//  Created by Vikhyath on 17/07/19.
//  Copyright © 2019 Vikhyath. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    let homeCellId = "HomeCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My wallet"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupCollectionView()
    }
    
    func setupCollectionView() {
        
        collectionView.backgroundColor = UIColor(red: 214/255, green: 219/255, blue: 240/255, alpha: 1)
        
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: homeCellId)
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20)
        
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellId, for: indexPath) as? HomeCell else {
            return UICollectionViewCell()
        }
//        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 40, height: 150)
    }
}
