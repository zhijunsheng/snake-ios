//
//  ArrayTests.swift
//  snakeTests
//
//  Created by Elaine on 2019/6/20.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase {
    
    
    func testIntArray() {
        let numbers: [Int] = [3, 5, 11, 0, 101,123,455,567,346,346,678,4567]
        print(numbers[0]  )
        print(numbers[1]  )
        print(numbers[numbers.count - 2]  )
        for ii in 0..<numbers.count {
            print(numbers[ii])
        }

  
    }
    
    func testStringArray() {
        let names: [String] = ["Bob","Leean ", "Mary" ,"Joseph"]
        print(names[names.count - 1])
        
        for i in 0..<names.count {
             print(names[i])
        }
    }
}
