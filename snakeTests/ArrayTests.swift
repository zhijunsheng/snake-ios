//
//  ArrayTests.swift
//  snakeTests
//
//  Created by Sharon Chen on 2018-07-15.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase {
    
    
    
    func testIntArray() {
       let arr = [1, 3, 6, 5, 7]
        print(arr)
        print(arr[1])
        print(arr.count)
        
        for i in arr {
            print(i)
        }
        
        for (idx, element) in arr.enumerated() {
            print("idx = \(idx), element = \(element)")

        }
    }
    
    func testStringArray() {
        let str = "hello sharon"
        let strArr = Array(str)
        print(str)
        print(strArr)
        print(strArr[4])
        
        print("a" + "b")
        
        
    }
    
}
