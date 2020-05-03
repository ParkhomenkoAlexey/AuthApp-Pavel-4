//
//  NetworkService.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 02.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

class NetworkService {
    func request(urlString: String, competion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    competion(.failure(error))
                    return
                }
                guard let data = data else { return }
                competion(.success(data))
            }
        }.resume()
    }
    
    func createUrl() {
        
    }
}
