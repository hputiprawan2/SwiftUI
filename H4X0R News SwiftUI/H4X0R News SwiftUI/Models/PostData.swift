//
//  PostData.swift
//  H4X0R News SwiftUI
//
//  Created by Hanna Putiprawan on 1/29/21.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

// Identifiable allows a list to recognize order of the post object based on the id
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    } // turn ID = objectID, id is required for Identifiable protocol
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
