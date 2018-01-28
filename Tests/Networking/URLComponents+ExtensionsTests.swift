//
//  URLComponents+ExtensionsTests.swift
//  CryptoExchange
//
//  Created by Joe Blau on 1/26/18.
//

import XCTest
@testable import CryptoExchange

class URLComponents_ExtensionsTests: XCTestCase {
    
    func testCoinbaseAuthenticate() {
        let oAuthCredentialsMock = OAuthCredentials(clientId: "ABC", clientSecret: "DEF")

        var urlComponentsMock = URLComponents(url: URL(string: "http://www.com")!, resolvingAgainstBaseURL: false)
        let mockURL = urlComponentsMock?.authenticate(oAuthCredentials: oAuthCredentialsMock)

        XCTAssertNotNil(oAuthCredentialsMock)
        XCTAssertNotNil(urlComponentsMock)
        XCTAssertNotNil(mockURL)
    }

    func testCoinbaseToken() {
        let oAuthCredentialsMock = OAuthCredentials(clientId: "ABC", clientSecret: "DEF")

        var urlComponentsMock = URLComponents(url: URL(string: "http://www.com")!, resolvingAgainstBaseURL: false)
        let mockURL = urlComponentsMock?.token(code: "XYZ", oAuthCredentials: oAuthCredentialsMock)

        XCTAssertNotNil(oAuthCredentialsMock)
        XCTAssertNotNil(urlComponentsMock)
        XCTAssertNotNil(mockURL)
    }
    
}