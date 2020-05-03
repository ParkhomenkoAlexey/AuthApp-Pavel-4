//
//  NetworkDataFetcher.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 02.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

class NetworkDataFetcher {
    
    let networkService = NetworkService()
    
    func fetchTracks(urlString: String, comlpetion: @escaping (SearchResponse?) -> Void) {
        networkService.request(urlString: urlString) { (result) in
            switch result {
            case .success(let data):
                do {
                    let tracks = try JSONDecoder().decode(SearchResponse.self, from: data)
//                    print(tracks)
                    comlpetion(tracks)
                } catch _ {
//                    print("Failed to decode JSON", jsonError)
                    comlpetion(nil)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
