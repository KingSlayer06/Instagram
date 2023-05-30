//
//  AppFlowCoordinator.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import UIKit

class AppFlowCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var parentCoordinator: Coordinator?
    
    var childCoordinators = [Coordinator]()
    
    private let appDiContainer: AppDIContainer
    
    init(appDiContainer: AppDIContainer, navigationController: UINavigationController) {
        self.appDiContainer = appDiContainer
        self.navigationController = navigationController
    }
    
    func start() {
        checkAppFlow()
    }
    
    func finish() {
        checkAppFlow()
    }
    
    func finishAll() {
        
    }
    
    func childDidFinish(_ child: Coordinator) {
        
    }
    
    func checkAppFlow() {
        moveToHomeTabBarScreen()
    }
    
    // MARK : - Move To Screens
    
    private func moveToHomeTabBarScreen() {
        let homeTabBarDiContainer = appDiContainer.makeHomeTabBarDIConainer()
        
        let flow = homeTabBarDiContainer.makeHomeTabBarFlowCoordinator(navigationController: navigationController)
        flow.start()
        flow.parentCoordinator = self
    }
}
