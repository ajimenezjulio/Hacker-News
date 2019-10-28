//
//  PostData.swift
//  H4XOR News
//
//  Created by Aguilar, Julio on 10/28/19.
//  Copyright © 2019 Julio Cesar. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
