//
//  NavigationController.swift
//  ScreenRotationDemo
//
//  Created by 李沛倬 on 2018/11/29.
//  Copyright © 2018 peizhuo. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    // MARK: - Status Bar

    override var prefersStatusBarHidden: Bool {

        return false
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {

        return .lightContent
    }
    

    // MARK: - Interface Orientation

    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        guard let topVC = topViewController else { return .portrait }

        return topVC.preferredInterfaceOrientationForPresentation
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let topVC = topViewController else { return .portrait }


        return topVC.supportedInterfaceOrientations
    }

    override var shouldAutorotate: Bool {
        guard let topVC = topViewController else { return true }

        return topVC.shouldAutorotate
    }

        
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        哈哈()
        
        let 参数一 = 23
        let 甲 = 1
        
        let 和 = 参数一 + 甲
        
        print(和)
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    
    
    func 哈哈() -> Void {
        print("哈哈哈😆")
    }
    
    
    
    

}
