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
import TheRickandMortyAPI

final class CharactersBuilder: CharactersBuilderProtocol {
    static func make() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Characters", bundle: .main)
        let service = TheRickandMortyService()
               let viewModel = CharactersViewModel(service: service)
        let viewController = storyboard.instantiateInitialViewController() as! CharactersViewController
        viewController.viewModel = viewModel
        
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
