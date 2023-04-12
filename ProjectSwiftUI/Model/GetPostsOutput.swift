//
//  GetPostsOutput.swift
//  ProjectSwiftUI
//
//  Created by Atul Gupta on 04/01/23.
//

import Foundation

struct GetPostsOutput: Codable {
    let posts: [Post]
    let total, limit: Int
}

struct Post: Identifiable, Codable {
    let id: Int
    let title, body: String
}
