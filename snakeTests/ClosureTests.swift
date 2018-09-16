//
//  ClosureTests.swift
//  snakeTests
//
//  Created by Bowen Lin on 2018-09-09.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ClosureTests: XCTestCase {
    
    func testTimer() {
        let t = timer()
 
 
    
    }
    
    func timer() -> Timer {
        let t = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            print("hi")
        }
        return t
    }
    
    func testArrayMapping(){
        let intArr = [7, 8, 3, 1]
        let newArr = intArr.map { (x: Int) -> String in
            return "hello \(x)"
            
        }
        print(newArr)
    }
    
    func testArrayFiltering(){
        let arr = ["tom", "bob", "joe", "kate"]
//        let newArr = arr.filter { (x: String) -> Bool in
//            return x.count > 3
//        }
//        print(newArr)
        let newArr = arr.filter { $0.count < 4}
        print(newArr)
    }
   
    func multiplyTwoNumbers(numberOne: Int, numberTwo: Int) -> Int {
        
        return numberTwo * numberOne
    }
    
    func twoParamsWithReturn(numberOne: Int, numberTwo: Int) -> Int{
        
        return numberOne + numberTwo
    }
    
    func testTwoParamsWithReturn(){
        var fn: (Int, Int) -> Int
        fn = twoParamsWithReturn
        let sumOfTwo = fn(5, 7)
        print(sumOfTwo)
        fn =  multiplyTwoNumbers
        print(fn(6, 8))
        fn = { $0 - $1 }
        print(fn(89, 5))
    }
    
    func oneParamNoReturn(name: String){
        print("hello \(name)")
    }
    
    func testOneParamNoReturn(){
        var fn: (String) -> ()
        
        fn = oneParamNoReturn
//        oneParamNoReturn(name: "bob")
//        fn("bob")
        fn = { (x: String) in
            print("hello\(x)")
        }
        fn("Steve")
        
    }
    
    func testFunction(){
        var fn: () -> ()
        fn = noParamNoReturn
        fn()
//        fn = noParamNoReturn2
//        fn()
        fn = {
            print("hi")
        }
        
        fn()
//        for fn in [noParamNoReturn, noParamNoReturn2] {
//            fn()
//        }
    
    }
    
    func noParamNoReturn2(){
        print("hi")
    }
    
    func noParamNoReturn(){
        print("noParamNoReturn")
    }
    
}
