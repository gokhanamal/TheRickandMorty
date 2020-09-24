//
//  AppRouter.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 19.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import class UIKit.UIWindow
import class UIKit.UITabBarController

final class AppRouter {
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        window?.rootViewController = CharactersBuilder.make()
        window?.makeKeyAndVisible()
    }
}
