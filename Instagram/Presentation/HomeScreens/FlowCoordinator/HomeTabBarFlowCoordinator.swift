//
//  HomeTabBarFlowCoordinator.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import UIKit

final class HomeTabBarFlowCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var parentCoordinator: Coordinator?
    
    var childCoordinators = [Coordinator]()
    
    private let dependency: HomeTabBarDIContainer
    
    init(dependency: HomeTabBarDIContainer, navigationController: UINavigationController) {
        self.dependency = dependency
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = dependency.makeHomeTabBarViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func finish() {
        
    }
    
    func finishAll() {
        
    }
    
    func childDidFinish(_ child: Coordinator) {
        
    }
}
