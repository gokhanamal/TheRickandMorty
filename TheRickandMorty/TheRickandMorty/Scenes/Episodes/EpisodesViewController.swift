//
//  ViewController.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 19.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import UIKit

class EpisodesViewController: UIViewController {
    var viewModel: EpisodesViewModelProtocol! {
        didSet {
            viewModel.view = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    private func setupNavigation() {
        navigationItem.title = "Episodes"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension EpisodesViewController: EpisodesViewDelegate {
    func handleOutput(_ output: EpisodesOutput) {
        switch output {
        case .setLoading(let isLoading):
            break;
        case .showError(let error):
            break;
        case .showEpisodes:
            break;
        }
    }
}

