//
//  postData.swift
//  H4KR
//
//  Created by Andres Alcaraz on 17/08/20.
//  Copyright © 2020 Andres Alcaraz. All rights reserved.
//

import Foundation
struct Results:Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let  objectID: String
    let points: Int
    let title: String
    let url: String?
}
