//
//  ClassStructTests.swift
//  snakeTests
//
//  Created by Peter Shi on 2018-07-10.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ClassStructTests: XCTestCase {
 
    func testClass() {
        var aClass = SomeClass(name: "Bob")
        print(aClass.name)
        var bClass = aClass
        bClass.name = "Sue"
        print(aClass.name)
        print(bClass.name)
        
    }

    func testStruct() {
        var aStruct = SomeStruct(name: "Bob")
        var bStruct = aStruct
        bStruct.name = "Sue"
        
        print(aStruct.name)
        print(bStruct.name)
        
    }
    
}

struct SomeStruct {
    var name: String
    init(name: String){
        self.name = name
    }
}

class SomeClass {
    var name: String
    init(name: String){
        self.name = name
    }
}
