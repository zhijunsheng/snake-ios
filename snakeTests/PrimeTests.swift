//
//  PrimeTests.swift
//  snakeTests
//
//  Created by Peter Shi on 2018-07-21.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class PrimeTests: XCTestCase {

    func testPrime() {
        XCTAssertFalse(isPrime(candidate: 1))
        XCTAssertTrue( isPrime(candidate: 31))
        XCTAssertTrue( isPrime(candidate: 331))
        XCTAssertTrue( isPrime(candidate: 3331))
        XCTAssertTrue( isPrime(candidate: 33331))
        XCTAssertTrue( isPrime(candidate: 333331))
        XCTAssertTrue( isPrime(candidate: 3333331))
        XCTAssertTrue( isPrime(candidate: 33333331))
        XCTAssertFalse(isPrime(candidate: 333333331)) // factor: 17
        XCTAssertFalse(isPrime(candidate: 3333333331)) // factor: 673

        XCTAssertTrue( isPrime(candidate: 673))
        XCTAssertTrue( isPrime(candidate: 31313125397))
        XCTAssertTrue( isPrime(candidate: 30303030303031))
    }

    func isPrime(candidate: Int) -> Bool {
        if candidate == 1 {
            return false
        }
        for a in 2...Int(sqrt(Double(candidate))) {
            if candidate % a == 0 {
                print(a)
                return false
            }
        }
        return true
    }
}
