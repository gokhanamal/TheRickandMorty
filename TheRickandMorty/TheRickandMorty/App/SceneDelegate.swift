//
//  SceneDelegate.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 19.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let router = AppRouter(window: window)
        router.start()
        
    }

}

