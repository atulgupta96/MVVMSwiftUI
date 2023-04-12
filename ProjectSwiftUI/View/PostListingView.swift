//
//  ContentView.swift
//  ProjectSwiftUI
//
//  Created by Atul Gupta on 04/01/23.
//

import SwiftUI

struct PostListingView: View {
    
    @StateObject private var viewModel = PostListingViewModel()
    
    var body: some View {
        NavigationView {
            
            List(viewModel.posts, id: \.id) { post in
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.title)
                        .font(.title3)
                    Text(post.body)
                        .font(.caption)
                }
            }
            .navigationTitle("All Posts")
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}

struct PostListingView_Previews: PreviewProvider {
    static var previews: some View {
        PostListingView()
    }
}
