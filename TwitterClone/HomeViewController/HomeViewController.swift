//
//  HomeViewController.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import Foundation
import UIKit


class HomeViewController: UICollectionViewController {
    
    var viewModel : HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.barTintColor = AppColor.navColor
        self.navigationItem.title = "Home"
        
        self.viewModel = HomeViewModel()
        
        self.collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        self.collectionView?.dataSource = self.viewModel
        self.collectionView?.delegate = self.viewModel
        self.collectionView?.showsVerticalScrollIndicator = false
        self.collectionView?.contentInset = UIEdgeInsetsMake(63, 0, 0, 63)
        self.collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(63, 0, 0, 63)
        
        //register
        self.collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: self.viewModel.cellIdentifier)
        
    }
    
    
    
}
