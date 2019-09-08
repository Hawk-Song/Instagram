//
//  ViewController.swift
//  InstagramFireBase
//
//  Created by Hawk Song on 9/7/19.
//  Copyright © 2019 Hawk Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let plusPhotoButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
    }


}

