//
//  CharactersContracts.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 24.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import class UIKit.UINavigationController

protocol CharactersBuilderProtocol {
    static func make() -> UINavigationController
}
