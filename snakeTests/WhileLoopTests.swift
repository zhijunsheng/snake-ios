//
//  WhileLoopTests.swift
//  snakeTests
//
//  Created by Grace Huang on 5/7/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import XCTest

class WhileLoopTests: XCTestCase {

    func testWhile() {
//        var cnt: Int = 0
//        while cnt < 7 {
//            print(cnt)
//            cnt += 1
//        }
        
//        let intArr: [Int] = [8, 0, 13, -333]
//        var idx = 0
//        while idx < intArr.count {
//            print(intArr[idx])
//            idx += 1
//        }
        
        // let find the max integer whose squared value is less than 103
        var idx: Int = 0
        
        while idx * idx < 103 {
            print(idx)
            idx += 1
        }
    }

}
