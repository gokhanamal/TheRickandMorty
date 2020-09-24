//
//  Decoders.swift
//  TheRickandMortyAPI
//
//  Created by Gokhan Namal on 22.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation

public enum Decoders {
    static let plainDateDecoeder: JSONDecoder = {
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        decoder.dateDecodingStrategy =  .formatted(formatter)
        return decoder
    }()
}
