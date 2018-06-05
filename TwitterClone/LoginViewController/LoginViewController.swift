//
//  ViewController.swift
//  TwitterClone
//
//  Created by Gogoi on 05/06/2018.
//  Copyright © 2018 Jayanta Gogoi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let txtUserName : TwitterTextField = {
        //set customized property if required
        let txtField = TwitterTextField()
        txtField.textAlignment = .center
        txtField.placeholder = "Email ID, Phone Number"
        
        return txtField
    }()
    
    let txtUserPassword : TwitterTextField = {
        let txtField = TwitterTextField()
        txtField.textAlignment = .center
        txtField.placeholder = "Password"
        
        return txtField
    }()
    
    let loginButton : TwitterButton = {
        
        let btn = TwitterButton(withTitle: "Login", frame: CGRect.zero)
        return btn
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         self.navigationController?.isNavigationBarHidden = true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
        
        setupView()
        
     }

    //MARK: - Setup UI
    private func setupView(){
        
        view.addSubview(txtUserName)
        view.addSubview(txtUserPassword)
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(onTapLogin(_:)), for: .touchUpInside)
        
        view.addConstraintWithFormat(format: "H:|-20-[v0]-20-|", views: txtUserName)
        view.addConstraintWithFormat(format: "H:|-20-[v0]-20-|", views: txtUserPassword)
         view.addConstraintWithFormat(format: "H:|-20-[v0]-20-|", views: loginButton)
        view.addConstraintWithFormat(format: "V:|-200-[v0(45)]-20-[v1(45)]-30-[v2(50)]", views: txtUserName,txtUserPassword, loginButton)
        
        
    }
 
    //MARK: - User Tap Actions
    @objc func onTapLogin(_ sender: UIButton){
        sender.onTapAnimation()
       
        //if login success
        let homeViewController = HomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
        self.navigationController?.pushViewController(homeViewController, animated: true)
        
    }
    

}

