//
//  RemoteFeedLoader.swift
//  FeedApp
//
//  Created by Andrea Massari on 01/05/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL = URL(string: "https://a-url.com")!, client: HTTPClient){
        self.client = client
        self.url = url
    }
    
    public enum Error: Swift.Error {
        case connectivity
    }
    
    public func load(completion: @escaping (Error) -> Void = { _ in }) {
        client.get(from: url){ error in
            completion(.connectivity)
        }
    }
}
