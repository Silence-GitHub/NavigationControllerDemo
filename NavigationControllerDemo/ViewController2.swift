//
//  ViewController2.swift
//  NavigationControllerDemo
//
//  Created by Kaibo Lu on 2017/3/17.
//  Copyright © 2017年 Kaibo Lu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem(title: "Pop", style: .plain, target: self, action: #selector(goBack)),
                                             UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissVC))]
        
        view.backgroundColor = .groupTableViewBackground
    }
    
    func goBack() {
        _ = navigationController?.popViewController(animated: true)
    }
    
    func dismissVC() {
        dismiss(animated: true, completion: nil)
    }

}
