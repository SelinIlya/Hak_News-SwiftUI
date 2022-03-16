//
//  PostData.swift
//  Hak_News
//
//  Created by Ilya Selin on 16.03.2022.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable { // Identifiable нужен индефикатор ID
    var id: String {
        return objectID
    }
    let objectID: String
    var points: Int
    let title: String
    let url: String?
}
