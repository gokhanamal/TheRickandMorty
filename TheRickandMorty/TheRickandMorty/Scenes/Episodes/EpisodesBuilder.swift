//
//  EpisodesBuilder.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 19.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import UIKit

final class EpisodesBuilder: EpisodesBuilderProtocol {
    static func make() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Episodes", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! EpisodesViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
