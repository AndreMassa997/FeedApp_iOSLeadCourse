//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Andrea Massari on 03/06/24.
//

import Foundation
import FeedApp

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
