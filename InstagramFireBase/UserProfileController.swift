//
//  UserProfileController.swift
//  InstagramFireBase
//
//  Created by Hawk Song on 9/11/19.
//  Copyright © 2019 Hawk Song. All rights reserved.
//

import UIKit
import Firebase

class UserProfileController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .green
        
        navigationItem.title = Auth.auth().currentUser?.uid
        
        fetchUser()
    }
    
    fileprivate func fetchUser() {
        
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            print(snapshot.value ?? "")
            let dictinary = snapshot.value as? [String: Any]
            guard let username = dictinary["username"] as? String else {return}
            self.navigationItem.title = username
            
        }) { (err) in
            print("Failed to fetch user: ", err)
        }
    }
}
