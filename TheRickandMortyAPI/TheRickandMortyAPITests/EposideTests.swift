//
//  EposideTests.swift
//  TheRickandMortyAPITests
//
//  Created by Gokhan Namal on 22.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import XCTest
@testable import TheRickandMortyAPI

class EposideTests: XCTestCase {

    func testExample() throws {
        let bundle = Bundle(for: EposideTests.self)
        let url = bundle.url(forResource: "episode", withExtension: "json")!
        let data = try Data(contentsOf: url)
        let decoder = Decoders.plainDateDecoeder
        let episode = try decoder.decode(CharactersResponse.self, from: data)
        
        XCTAssertEqual(episode.name, "Pilot")
        XCTAssertEqual(episode.id, 1)
        XCTAssertEqual(episode.episode, "S01E01")
    }

}
