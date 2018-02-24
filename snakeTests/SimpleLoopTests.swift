//
//  SimpleLoopTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-02-11.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class SimpleLoopTests: XCTestCase {
    
    func testMovingElementsOfAnArr() {
        var anArr = [10, 12, 5, 7]
        let first = anArr[0]
        for (i, num) in anArr.enumerated() {
            print("i is \(i), num is \(num)")
            if i < anArr.count - 1 {
                anArr[i] = anArr[i + 1]
            } else {
                anArr[i] = first
            }
        }
        print(anArr)
    }
    
    func testPrint() {
        for i in 1...7 {
            for j in i...7 {
                print(j, terminator: "")
            }
            print()
        }
            print()
    }
    
    func testSumOfSquares() {
        XCTAssertEqual(5, calculationOfSumOfSquares(lastInt: 2))
        XCTAssertEqual(0, calculationOfSumOfSquares(lastInt: 0))
    }
    
    func calculationOfSumOfSquares(lastInt: Int) -> Int {
        var sum = 0
        for i in 0...lastInt {
            sum += i * i
        }
        return sum
    }
    
    func testNumberOfMultiplesOf7() {
        XCTAssertEqual(2, countMultiplesOf7InList(firstNumber: 3, lastNumber: 14))
        XCTAssertEqual(0, countMultiplesOf7InList(firstNumber: 1, lastNumber: 1))
        XCTAssertEqual(2, countMultiplesOf7InList(firstNumber: -1, lastNumber: 7))
        XCTAssertEqual(3, countMultiplesOf7InList(firstNumber: -7, lastNumber: 7))
    }
    
    func countMultiplesOf7InList(firstNumber: Int, lastNumber: Int) -> Int? {
        var numberOfMultiplesOf7 = 0
        for i in firstNumber...lastNumber {
            if i % 7 == 0 {
                numberOfMultiplesOf7 += 1
            }
        }
        return numberOfMultiplesOf7
    }
  
    func testNumberOfOddNumbersInArr() {
        XCTAssertEqual(2, numberOfOddNumbersInArr(arr: [1, 5]))
        XCTAssertEqual(0, numberOfOddNumbersInArr(arr: [2]))
        XCTAssertEqual(7, numberOfOddNumbersInArr(arr: [1, 1, 1, 1, 1, 1, 1]))
        XCTAssertEqual(1, numberOfOddNumbersInArr(arr: [-1]))

    }
    
    func numberOfOddNumbersInArr(arr: [Int]) -> Int {
        var numberOfOddNumbers = 0
        for i in arr {
            if i % 2 == 1 || i % 2 == -1 {
                numberOfOddNumbers += 1
            }
        }
        return numberOfOddNumbers
    }
    
    func testPrinting2() {
        for i in 1...7 {
            for j in 1...i {
                print(j, terminator: "")
            }
            print()
        }
    }
    
    func testPrinting() {
        for _ in 1...3 {
            for i in 1...7 {
                print(i, terminator: "")
            }
            print()
        }
    }
    
    func testMaxInt() {
        XCTAssertEqual(90, maxInt(arr: [1, 6, 8, 2, 0, 90]))
        XCTAssertNil(maxInt(arr: []))
        XCTAssertEqual(-100000000000, maxInt(arr: [-100000000000]))
    }
    
    func maxInt(arr: [Int]) -> Int? {
        if arr.isEmpty {
            return nil
        }
        var largestInt = arr[0]
        for i in arr {
            if i > largestInt {
                largestInt = i
            }
        }
        return largestInt
    }
    
    func testIsEightInArr() {
        XCTAssertTrue(doesArrContainTargetInt(arr: [1, 6, 8, 9, 3, 5], targetInt: 8))
        XCTAssertTrue(doesArrContainTargetInt(arr: [8], targetInt: 8))
        XCTAssertFalse(doesArrContainTargetInt(arr: [1], targetInt: 8))
        XCTAssertTrue(doesArrContainTargetInt(arr: [8, 8], targetInt: 8))
        XCTAssertTrue(doesArrContainTargetInt(arr: [1, 6, 8, 9, 3, 5], targetInt: 8))
    }
    
    func doesArrContainTargetInt(arr: [Int], targetInt: Int) -> Bool {
        var containsTargetInt = false
        for i in arr {
            if i == targetInt {
                containsTargetInt = true
                break
            }
        }
        return containsTargetInt
    }

    func testAddArr() {
        XCTAssertEqual(14, addAllInArr(arr: [3, 5, 6]))
        XCTAssertEqual(3, addAllInArr(arr: [3]))
        XCTAssertEqual(0, addAllInArr(arr: [0]))
        XCTAssertEqual(0, addAllInArr(arr: [0, 0]))
        XCTAssertEqual(0, addAllInArr(arr: []))
    }
    
    func addAllInArr(arr: [Int]) -> Int {
        var sum = 0
        for i in arr {
            sum += i
        }
        return sum
    }
    
    func testExample() {
        XCTAssertEqual(8, add(a: 3, b: 5))
        XCTAssertEqual(5, add(a: -2, b: 7))
        XCTAssertEqual(11, add(a: 0, b: 11))
        XCTAssertEqual(0, add(a: -1, b: 1))
    }
    
    func add(a: Int, b: Int) -> Int {
        let sum = a + b
        return sum
    }
}
