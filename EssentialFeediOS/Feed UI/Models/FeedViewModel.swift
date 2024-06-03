//
//  FeedViewModel.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 03/06/24.
//

import Foundation
import FeedApp

final class FeedViewModel {
    private let feedLoader: FeedLoader
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    var onChange: ((FeedViewModel) -> Void)?
    
    var isLoading: Bool = false {
        didSet { onChange?(self) }
    }

    var onFeedLoad: (([FeedImage]) -> Void)?
    
    func loadFeed() {
        isLoading = true
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onFeedLoad?(feed)
            }
            self?.isLoading = false
        }
    }
}
