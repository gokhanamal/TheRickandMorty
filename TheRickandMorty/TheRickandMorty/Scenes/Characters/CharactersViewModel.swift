//
//  CharactersViewModel.swift
//  TheRickandMorty
//
//  Created by Gokhan Namal on 24.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation
import TheRickandMortyAPI

final class CharactersViewModel: CharactersViewModelProtocol {
    var view: CharactersViewDelegate?
    var service: TheRickandMortyService
    
    init(service: TheRickandMortyService) {
        self.service = service
    }
    
    func viewDidLoad() {
        service.getCharaters() { [weak self] result in
            guard let `self` = self else { return }
            switch(result) {
            case .success(let response):
                print(response.results.count)
                break;
            case .failure(let error):
                self.view?.handleOutput(.showError(error.localizedDescription))
            }
        }
    }
}
