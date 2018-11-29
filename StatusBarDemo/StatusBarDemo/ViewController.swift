//
//  ViewController.swift
//  StatusBarDemo
//
//  Created by 李沛倬 on 2018/11/29.
//  Copyright © 2018 peizhuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Status Bar
    
    override var prefersStatusBarHidden: Bool {
        var hidden = false
        guard let navi = navigationController else { return hidden }
        
        switch navi.viewControllers.count {
        case 1:
            hidden = false
            break
        case 2:
            hidden = true
            break
        case 3:
            hidden = false
            break
        case 4 :
            hidden = false
            break
        default:
            break
        }
        
        return hidden
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        var style = UIStatusBarStyle.default
        guard let navi = navigationController else { return style }
        
        switch navi.viewControllers.count {
        case 1:
            style = .default
            break
        case 2:
            style = .default
            break
        case 3:
            style = .lightContent
            break
        case 4 :
            style = .default
            break
        default:
            break
        }
        
        return style
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
}

