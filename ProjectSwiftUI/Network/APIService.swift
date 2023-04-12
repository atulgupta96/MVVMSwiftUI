//
//  APIService.swift
//  ProjectMVVM
//
//  Created by Atul Gupta on 04/01/23.
//

import Foundation

public enum APIService: Routable {

    case getPosts
    
    public var url: URL {
        switch self {
        case .getPosts: return URL(string: "https://dummyjson.com" + endPoint)!
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .getPosts: return .GET
        }
    }
    
    public var endPoint: String {
        switch self {
        case .getPosts: return "/posts"
        }
    }
    
    public var body: Data? {
        switch self {
        case .getPosts: return nil
        }
    }
    
}
