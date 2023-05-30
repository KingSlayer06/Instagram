//
//  AppDIContainer.swift
//  Instagram
//
//  Created by Himanshu Sherkar on 30/05/23.
//

import Foundation

final class AppDIContainer {
    
    func makeHomeTabBarDIConainer() -> HomeTabBarDIContainer {
        return HomeTabBarDIContainer()
    }
}
