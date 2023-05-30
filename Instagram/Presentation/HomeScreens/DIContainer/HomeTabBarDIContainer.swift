//
//  HomeTabBarDIContainer.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import UIKit

final class HomeTabBarDIContainer {
    
    func makeHomeTabBarViewController() -> HomeTabBarViewController {
        return HomeTabBarViewController.create(with: makeHomeTabBarViewModel())
    }
    
    func makeHomeTabBarViewModel() -> HomeTabBarViewModel {
        return HomeTabBarViewModel()
    }
    
    func makeHomeTabBarFlowCoordinator(navigationController: UINavigationController) -> HomeTabBarFlowCoordinator {
        return HomeTabBarFlowCoordinator(dependency: self, navigationController: navigationController)
    }
}
