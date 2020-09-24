//
//  EpisodesResponse.swift
//  TheRickandMortyAPI
//
//  Created by Gokhan Namal on 20.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation

public struct CharactersResponse: Decodable {
    let info: Info
    let results: [Character]
}
