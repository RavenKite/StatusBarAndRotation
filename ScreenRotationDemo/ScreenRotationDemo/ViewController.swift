//
//  ViewController.swift
//  ScreenRotationDemo
//
//  Created by 李沛倬 on 2018/11/29.
//  Copyright © 2018 peizhuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Interface Orientation
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        var interfaceOrientation = UIInterfaceOrientation.portrait
        guard let navi = navigationController else { return interfaceOrientation }
        
        switch navi.viewControllers.count {
        case 1:
            interfaceOrientation = .portrait
            break
        case 2:
            interfaceOrientation = .landscapeRight
            break
        case 3:
            interfaceOrientation = .landscapeLeft
            break
        case 4 :
            interfaceOrientation = .portrait
            break
        default:
            break
        }
        
        return interfaceOrientation
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        var mask = UIInterfaceOrientationMask.portrait
        guard let navi = navigationController else { return mask }
        
        switch navi.viewControllers.count {
        case 1:
            mask = .portrait
            break
        case 2:
            mask = .landscape
            break
        case 3:
            mask = .landscape
            break
        case 4 :
            mask = .all
            break
        default:
            break
        }
        
        return mask
    }
    
    override var shouldAutorotate: Bool {
        
        return true
    }
    
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIDevice.current.setValue(preferredInterfaceOrientationForPresentation.rawValue, forKey: "orientation")
    }
    

}

