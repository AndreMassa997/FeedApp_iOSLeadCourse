//
//  RemoteFeedLoaderTests.swift
//  FeedAppTests
//
//  Created by Andrea Massari on 01/05/24.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL = URL(string: "https://a-url.com")!, client: HTTPClient){
        self.client = client
        self.url = url
    }
    
    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

//Used only for tests
class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
     func get(from url: URL) {
        requestedURL = url
    }
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL(){
        let url = URL(string: "https://a-url.com")
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(url: url, client: client)
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let url = URL(string: "https://a-given-url.com")!
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(url: url, client: client)
        
        sut.load()
        XCTAssertEqual(client.requestedURL, url)
    }

}
