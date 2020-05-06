//
//  SearchResponse.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 02.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    let trackName: String
    let artistName: String
    let collectionName: String
    let artworkUrl60: String?
}
