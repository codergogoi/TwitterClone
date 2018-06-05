//
//  HomeViewModel.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import Foundation
import UIKit

class HomeViewModel: NSObject{
    
    let headerIdentifier = "homeHeader"
    let footerIdentifier = "homeFooter"
    let cellIdentifier = "homeCellId"
    
    
 
}

//Implement CollectionView Delegates and dataSource
//this will make your class clean
extension HomeViewModel : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellIdentifier, for: indexPath)
        
        return cell
    }
    
    
    
}

