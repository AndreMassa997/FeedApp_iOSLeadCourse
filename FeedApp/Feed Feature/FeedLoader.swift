//
//  FeedLoader.swift
//  FeedApp
//
//  Created by Andrea Massari on 01/05/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
