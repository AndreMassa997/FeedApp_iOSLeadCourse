//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 17/05/24.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    
    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
