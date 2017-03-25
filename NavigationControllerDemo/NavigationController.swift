//
//  NavigationController.swift
//  NavigationControllerDemo
//
//  Created by Kaibo Lu on 2017/3/18.
//  Copyright © 2017年 Kaibo Lu. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController, UINavigationControllerDelegate, UIGestureRecognizerDelegate {

    private var currentNotRootVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        interactivePopGestureRecognizer?.delegate = self
    }
    
    // MARK: - UINavigationControllerDelegate
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        currentNotRootVC = viewControllers.count <= 1 ? nil : viewController
    }
    
    // MARK: - UIGestureRecognizerDelegate
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if interactivePopGestureRecognizer == gestureRecognizer {
            return currentNotRootVC == topViewController
        }
        return true
    }

}
