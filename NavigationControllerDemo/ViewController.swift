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
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(leftButtonClicked))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Right", style: .plain, target: self, action: #selector(rightButtonClicked))
    }
    
    func leftButtonClicked() {
        let nc = NavigationController(rootViewController: ViewController())
        present(nc, animated: true, completion: nil)
    }
    
    func rightButtonClicked() {
        navigationController?.pushViewController(ViewController2(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

