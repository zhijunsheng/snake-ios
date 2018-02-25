//
//  SortingTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-02-25.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class SortingTests: XCTestCase {
    
    func testSortingArrayOfIntegers() {
        
        var ints = [3, 7, 1, 5, 2]
        
        let sorted = sortInts(ints: ints)
        
        XCTAssertEqual([1, 2, 3, 5, 7], sorted)
    }
    
    private func sortInts(ints: [Int]) -> [Int] {
        return ints
    }
    
}
