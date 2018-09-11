//
//  ClosureTests.swift
//  snakeTests
//
//  Created by Peter Shi on 2018-09-07.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest
@testable import snake

class ClosureTests: XCTestCase {
    
    func doPrint() {
        print("blah blah blah blah blah blah blah")
    }
    
    func changeJob() {
        print("meow meow meow meow meow meow meow")
    }
    
    func highLevelFunc2(fn: (Int, Int) -> Int) {
        // ?
        //??????????????????????????//
    }
    
    func highLevelFunc(a: Int, b: Int, fn: (Int, Int) -> Int) {
        print(fn(2*a, 3*b))
    }
    
    func testArrayMap2() {
//        let wordsLen = ["hello", "take", "morning"].map { (str: String) -> Int in
//            return str.count
//        }
        let wordsLen = ["hello", "take", "morning"].map { $0.count }
        print(wordsLen)
        
        print(["hello", "take", "morning"].filter{ $0.count >= 5 })
    }
    
    func testArrayMapSlashFilter() {
        let arrayOfCats = ["Tabby", "Lily", "田原"].map { $0.count }.filter { $0 >= 2 }
        print(arrayOfCats)
    }
    func testArrayMap() {
        
        
        let intArr = [9223372036854775807,
                      -9223372036854775808,]
        let newIntArr = intArr.map { (x: Int) -> Int in
            return x / 2
        }
        print(newIntArr)
    
        let stringArr = intArr.map { (y: Int) -> String in
            return String(y) + "gceuhjjhbcbnxmxmhjqhxxhjwqweqjkrwexnhxdxqewwqxhnrejlqxnjr,cjhvjrjjhbjrkclasndbhfjmnzbxjdkjmcnbrevjmfdnjcbejtvwcxmcnbshjtkramnxcbrukinrwfy5urkjeio,axfmhalo;olqzpmoxw,cgvohmrtly;tv,creivylcmxknlmwkcilmz,mkxncvuioekmjncuvhbiyrvt,khnutyjhbnjulkimypiknklhiuoclxmkznuukioxmbyuiokkjntvckmlrhncjmkxcjnxkmlzmxcvnjicklmmvjnckgmflxcmnvjmc,xk,kcmkhjelkrjvhtkedgdnfnbhjjhvjngkf,r"
        }
       // print(stringArr)
        
        let filter的array = intArr.filter { (a: Int) -> Bool in
            return a % 2 == 1
        }
        print(filter的array)
    }
    
    func testClosure3() {
        var fn: (Int, String) -> String
        
        fn = { (a: Int, b: String) in
            return "\(a * a * a * a * a * a * a * a * a * a * a * a * a * a * a * a * a * a * a * a)" + b
        }
        
        let myStr = fn(2, " = 1048576")
        print(myStr)
    }
    
    func testClosure2() {
//        var job: (Int, Int) -> Int
        
        let job0 = { (x: Int, y: Int) in
            return x * y
        }
        
        print("_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ")
        
        let job1 = { (x: Int, y: Int) in
            return x + y - x * y / x * x + y * (x + y)
        }
        
        print("_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ")
        
        highLevelFunc(a: 3, b: 5, fn: job0)
        
        highLevelFunc(a: 13, b: 5, fn: { (x: Int, y: Int) in
            return x + y - x * y / x
        })
        
        highLevelFunc(a: 34, b: 23) { (m, n) -> Int in
            return  m * n + n % m / n
        }
        
        highLevelFunc(a: 34, b: 23) { $0 + $1 }
     
        highLevelFunc(a: 232, b: 128, fn: job1)
    }
    
    
    func testClosure() {
        // () -> ()
        
//        for job in [doPrint, changeJob] {
//            job()
//        }
        
        var job = { (a: Int) in
            return a * a
        }
        
        let result = job(2)
        XCTAssertEqual(4, result)
        
        job = { (a: Int) in
            return a * a * a * a * a * a * a * a * a * a * a * a
        }
        XCTAssertEqual(4096, job(2))
        
        
    }
    
    // (Int) -> Int
    
    func square(a: Int) -> Int {
        print("\(Int.max)")
        print("\(Int.min)")
        return a * a
    }
    
    func testSquare() {
        var job: (Int) -> Int
        job = square
        let result = job(12345)
        XCTAssertEqual(152399025, result)
        print(result)
    }
}
