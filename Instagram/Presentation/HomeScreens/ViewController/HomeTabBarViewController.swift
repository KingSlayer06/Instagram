//
//  HomeTabBarViewController.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import UIKit

class HomeTabBarViewController: BaseViewController {

    weak var coordinator: HomeTabBarFlowCoordinator?
    
    private var viewModel: HomeTabBarViewModel!
    
    static func create(with viewModel: HomeTabBarViewModel) -> HomeTabBarViewController {
        let view = HomeTabBarViewController.instantiate(storyboard: .HomeTabBar)
        view.viewModel = viewModel
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind(to: self.viewModel)
        
        view.backgroundColor = .yellow
    }
    
    private func bind(to viewModel: HomeTabBarViewModel) {
        
    }
}
