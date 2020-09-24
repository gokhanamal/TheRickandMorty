//
//  Info.swift
//  TheRickandMortyAPI
//
//  Created by Gokhan Namal on 22.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation

public struct Info: Decodable {    
    public let count: Int
    public let pages: Int
    public let next: String?
    public let prev: String?
}
