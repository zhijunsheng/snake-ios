//
//  ClosureTests.swift
//  snakeTests
//
//  Created by Sharon Chen on 2018-08-25.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ClosureTests: XCTestCase {
    
    let noParameterNoReturnValue: () -> () = {
        print("------------")
    }
    
    let noParameterReturnInt: () -> Int = {
        return 1
    }
    
    let triple: (Int) -> Int = { x in
        return x * 3
    }
    
    let factorial: (Int) -> Int = { x in
        var y = 1
        for i in 0 ... x - 1 {
            y = y * (x - i)
        }
        return y
    }
    
    let add: (Int, Int) -> Int = { $0 + $1 }
    
    let subtract: (Int, Int) -> Int = { x, y in
        return x - y
    }
    
    func testNoParameterNoReturnValue() {
        noParameterNoReturnValue()
    }
    
    func testNoParameterReturnInt() {
        XCTAssertEqual(1, noParameterReturnInt())
    }
    
    func testTriple() {
        
        XCTAssertEqual(9, triple(3))
    }
    
    func testAdd() {
        XCTAssertEqual(10, add(4, 6))
    }
    
    func testSubtract() {
        XCTAssertEqual(7, subtract(9, 2))
    }
    
    func testClosure() {
        var operation: (Int, Int) -> Int = {x, y in x + y }
        
        XCTAssertEqual(10, {x, y in x + y }(4, 6))
        
        operation = subtract
        XCTAssertEqual(5, operation(7, 2))
        
        var operation2 = triple
        XCTAssertEqual(15, operation2(5))
        
        operation2 = factorial
        XCTAssertEqual(24, operation2(4))
    }
    
    func handleOperationWithTwoParameters(x: Int, y: Int, operation: (Int, Int) -> Int) {
        let result = operation(x, y)
        print(result)
    }
    
    func testHandleOperationWithTwoParameters() {
        handleOperationWithTwoParameters(x: 2, y: 3, operation: add)
        handleOperationWithTwoParameters(x: 8, y: 7, operation: subtract)
    }
    
    func testMap() {
        let sample = [2, 3, 5]
        let result = sample.map { // (x) -> String in
        "hello \($0)"

        }
        print (result)
    }
    
    func testFilter() {
        let sample = [2, 3, 5, 8, 11, 15]
        let result = sample.filter { $0 % 2 == 1 }
        print(result)
    }
    
}
