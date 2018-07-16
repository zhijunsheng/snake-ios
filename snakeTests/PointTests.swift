//
//  PointTests.swift
//  snakeTests
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class PointTests: XCTestCase {
    
    func testPoint() {
        let p0 = MyPoint(x: 36, y: 125)
        let p1 = MyPoint(x: 34, y: 256)
        print(p0)
        print(p1)
        print(p0.x)
        print(p1.x)
        print(p0.y)
        print(p1.y)
        if p0.x == p1.x && p0.y == p1.y{
            print("相同！！！")
        } else {
            print("不相同。☹️")
        }
    }
    
    struct MyPoint {
        let x : Int
        let y : Int
    }
}
