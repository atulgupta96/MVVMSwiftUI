//
//  ApiService.swift
//  ProjectSwiftUI
//
//  Created by Atul Gupta on 04/01/23.
//

import Foundation

protocol PostApiServiceProtocol {
    func getPosts(completion: @escaping (GetPostsOutput) -> Void)
}

final class PostApiService: PostApiServiceProtocol {
    
    private let session = URLSession(configuration: .default)
    
    func getPosts(completion: @escaping (GetPostsOutput) -> Void) {
        let api = APIService.getPosts
        let router = APIRouter<GetPostsOutput>(session)
        router.request(api) { output, _, _ in
            guard let data = output else { return }
            DispatchQueue.main.async {
                completion(data)
            }
        }
    }
}
