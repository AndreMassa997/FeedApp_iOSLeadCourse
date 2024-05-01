//
//  RemoteFeedLoader.swift
//  FeedApp
//
//  Created by Andrea Massari on 01/05/24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL = URL(string: "https://a-url.com")!, client: HTTPClient){
        self.client = client
        self.url = url
    }
    
    public func load() {
        client.get(from: url)
    }
}
