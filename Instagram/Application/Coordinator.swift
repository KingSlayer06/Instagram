//
//  Coordinator.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import UIKit

protocol Coordinator: AnyObject  {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? {get set}
    var childCoordinators: [Coordinator] { get set }
    
    func start()
    func finish()
    func finishAll()
    
    func childDidFinish(_ child: Coordinator)
    
    func addChildCoordinator(_ child: Coordinator)
    func removeChildCoordinator(_ child: Coordinator)
}

extension Coordinator {
    func addChildCoordinator(_ child: Coordinator) {
        childCoordinators.append(child)
    }
    
    func removeChildCoordinator(_ child: Coordinator) {
        childCoordinators.removeAll(where: { $0 === child })
    }
}
