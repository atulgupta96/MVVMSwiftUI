//
//  PostRepository.swift
//  ProjectSwiftUI
//
//  Created by Atul Gupta on 04/01/23.
//

import Foundation

protocol PostRepositoryProtocol {
    func getPosts(completion: @escaping (GetPostsOutput) -> Void)
}

final class PostRepository: PostRepositoryProtocol {
    
    private let apiService: PostApiServiceProtocol
    
    init(apiService: PostApiServiceProtocol = PostApiService()) {
        self.apiService = apiService
    }
    
    func getPosts(completion: @escaping (GetPostsOutput) -> Void) {
        apiService.getPosts(completion: completion)
    }
}
