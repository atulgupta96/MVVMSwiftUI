//
//  PostListingViewModel.swift
//  ProjectSwiftUI
//
//  Created by Atul Gupta on 04/01/23.
//

import Foundation

final class PostListingViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    private let repository: PostRepositoryProtocol
    
    init(repository: PostRepositoryProtocol = PostRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.getPosts { [weak self] data in
            self?.posts = data.posts
        }
    }
}
