//
//  CharactersViewController.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 24.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: CharactersViewModelProtocol! {
        didSet {
            viewModel.view = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Rick and Morty"
        navigationController?.navigationBar.prefersLargeTitles = true
        viewModel.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension CharactersViewController: CharactersViewDelegate {
    func handleOutput(_ output: CharactersViewOutputs) {
        switch output {
        case .showLoading(_):
            break;
        case .showError(_):
            break;
        case .showCharacters:
            break;
        }
    }
}
