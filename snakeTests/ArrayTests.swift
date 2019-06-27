//
//  ArrayTests.swift
//  snakeTests
//
//  Created by Elaine on 2019/6/20.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class ArrayTests: XCTestCase {
    
    func testLocationArray() {
        var snake: [Location] = []
        snake.append(Location(x: 9, y: 6))
        snake.append(Location(x: 9, y: 7))
        snake.append(Location(x: 8, y: 7))
        snake.append(Location(x: 7, y: 7))
        snake.append(Location(x: 7, y: 8))
        print(snake.count)
        
        let cellHead: Location = snake[0]
        print("headX is \(cellHead.x), headY is \(cellHead.y)")
        print(cellHead.x)
        print(cellHead.y)
    }

    func testProductOfIntArray()  {
        let allTogether: [Int] = [13, 2, 3, 9, 20, 4, 4]
        var product = 1
        for i in 0..<allTogether.count {
            product = product * allTogether[i]
        }
        print(product)
    }
    
    func testSumOfIntArray()  { // division sign is (/)
        let numbers: [Int] = [13, 2, 0, 9, 20, 4, 4]
        var sum = 0
        for ii in 0..<numbers.count {
            sum = sum + numbers[ii]
        }
        print(sum / numbers.count)
    }
    
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
