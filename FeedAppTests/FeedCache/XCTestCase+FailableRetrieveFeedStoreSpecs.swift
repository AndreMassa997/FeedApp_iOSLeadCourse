//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  FeedAppTests
//
//  Created by Andrea Massari on 08/05/24.
//

import XCTest
import FeedApp

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
    func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieve: .failure(error: anyNSError()), file: file, line: line)
    }
    
    func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieveTwice: .failure(error: anyNSError()), file: file, line: line)
    }
}
