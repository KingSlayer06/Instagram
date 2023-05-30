//
//  BaseViewController.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    enum Storyboard: String {
        case Onboarding = "OnBoardingScreen"
        case HomeTabBar = "HomeTabBarScreen"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension BaseViewController {
    
    class func instantiate(storyboard: Storyboard) -> Self {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
