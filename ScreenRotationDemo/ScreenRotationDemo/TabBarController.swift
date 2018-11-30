//
//  TabBarController.swift
//  ScreenRotationDemo
//
//  Created by 李沛倬 on 2018/11/30.
//  Copyright © 2018 peizhuo. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Status Bar
    
    override var prefersStatusBarHidden: Bool {
        guard let selectedVC = selectedViewController else { return false }
        
        return selectedVC.prefersStatusBarHidden
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let selectedVC = selectedViewController else { return .default }
        
        return selectedVC.preferredStatusBarStyle
    }
    
    // MARK: - Interface Orientation
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        guard let selectedVC = selectedViewController else { return .portrait }
        
        return selectedVC.preferredInterfaceOrientationForPresentation
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let selectedVC = selectedViewController else { return .portrait }
        
        return selectedVC.supportedInterfaceOrientations
    }
    
    override var shouldAutorotate: Bool {
        guard let selectedVC = selectedViewController else { return true }
        
        return selectedVC.shouldAutorotate
    }

    
    // MARK: - Life Cycle


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
