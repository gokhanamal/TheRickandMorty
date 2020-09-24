//
//  TheRickandMortyService.swift
//  TheRickandMortyAPI
//
//  Created by Gokhan Namal on 20.09.2020.
//  Copyright © 2020 Gokhan Namal. All rights reserved.
//

import Foundation

protocol TheRickandMortyServiceProtocol {
    func getCharaters(completion: @escaping (Result<CharactersResponse, Error>) -> Void)
}

final public class TheRickandMortyService: TheRickandMortyServiceProtocol {
    public init() {}
    private enum Enpoints {
        static let baseURL = "https://rickandmortyapi.com/api"
        
        case characters
        
        var url: URL {
            return URL(string: stringValue)!
        }
        
        var stringValue: String {
            switch self {
            case .characters:
                return "\(Enpoints.baseURL)/character"
            }
        }
        
    }
    
    public func getCharaters(completion: @escaping (Result<CharactersResponse, Error>) -> Void) {
        makeGetRequest(url: Enpoints.characters.url, responseType: CharactersResponse.self) { result in
            completion(result)
        }
    }
    
    private func makeGetRequest<T: Decodable>(url: URL, responseType: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) {(data, _, error) in
            guard let data = data else {
                completion(.failure(error!))
                return
            }
            
            let decoder = Decoders.plainDateDecoeder
            do {
                let response = try decoder.decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
