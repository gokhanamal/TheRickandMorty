//
//  CharactersBuilder.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 24.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import class UIKit.UINavigationController
import class UIKit.UIStoryboard

final class CharactersBuilder: CharactersBuilderProtocol {
    static func make() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Characters", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! CharactersViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
