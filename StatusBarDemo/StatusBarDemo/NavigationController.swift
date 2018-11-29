//
//  NavigationController.swift
//  StatusBarDemo
//
//  Created by 李沛倬 on 2018/11/29.
//  Copyright © 2018 peizhuo. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    // MARK: - Status Bar
    
    override var prefersStatusBarHidden: Bool {
        guard let topVC = topViewController else { return false }

        return topVC.prefersStatusBarHidden
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let topVC = topViewController else { return .default }

        return topVC.preferredStatusBarStyle
    }
    
    
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
