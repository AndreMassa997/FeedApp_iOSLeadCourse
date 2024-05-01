//
//  FeedItem.swift
//  FeedApp
//
//  Created by Andrea Massari on 01/05/24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
