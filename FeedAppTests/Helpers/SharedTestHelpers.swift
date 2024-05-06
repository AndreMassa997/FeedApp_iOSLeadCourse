//
//  SharedTestHelpers.swift
//  FeedAppTests
//
//  Created by Andrea Massari on 06/05/24.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
