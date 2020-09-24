//
//  EpisodesContracts.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 19.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import class UIKit.UINavigationController

protocol EpisodesBuilderProtocol {
    static func make() -> UINavigationController
}

protocol EpisodesViewModelProtocol {
    var view: EpisodesViewDelegate? { get set }
    func viewDidLoad()
}

protocol EpisodesViewDelegate {
    func handleOutput(_ output: EpisodesOutput)
}

enum EpisodesOutput {
    case setLoading(Bool)
    case showError(String)
    case showEpisodes
}
