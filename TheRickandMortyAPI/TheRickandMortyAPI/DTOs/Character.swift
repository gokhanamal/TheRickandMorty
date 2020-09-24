//
//  Episode.swift
//  TheRickandMortyAPI
//
//  Created by Gokhan Namal on 20.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation

public struct Character: Decodable {
    public let id: Int
    public let name: String
    public let status: String
    public let species: String
    public let type: String
    public let gender: String
    public let origin: Origin
    public let location: Location
    public let image: String
    public let url: String
    public let created: Date
}

public struct Origin: Decodable {
    public let name: String
    public let url: String
}

public struct Location: Decodable {
    public let name: String
    public let url: String
}
