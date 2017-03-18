//
//  ViewController.swift
//  NavigationControllerDemo
//
//  Created by Kaibo Lu on 2017/3/17.
//  Copyright © 2017年 Kaibo Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem(title: "Present", style: .plain, target: self, action: #selector(leftButtonClicked)),
                                             UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissVC))]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Push", style: .plain, target: self, action: #selector(rightButtonClicked))
    }
    
    func leftButtonClicked() {
        let nc = NavigationController(rootViewController: ViewController())
        present(nc, animated: true, completion: nil)
    }
    
    func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
    
    func rightButtonClicked() {
        navigationController?.pushViewController(ViewController2(), animated: true)
    }

}

