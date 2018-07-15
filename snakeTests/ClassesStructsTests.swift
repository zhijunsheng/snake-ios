//
//  ClassesStructsTests.swift
//  snakeTests
//
//  Created by Bowen Lin on 2018-07-08.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import XCTest

class ClassesStructsTests: XCTestCase {
    
    func testClass() {
        
        let aClass = SomeClass(name: "jason")
        let bClass = aClass
        bClass.name = "Bowen"
        print("aClass = \(aClass)")
        print("bClass = \(bClass)")
    }
    
    func testStructs() {
        
        let objectA = SomeStruct(name: "jason")
        var objectB = objectA
        objectB.name = "Bowen"
        print("ojectA = \(objectA)")
        print("ojectB = \(objectB)")

    }
}

class SomeClass: CustomStringConvertible {
    var description: String {
        return "[name:\(self.name)]"
    }
    
    var name: String

    init(name: String) {
        self.name = name
    }
}

struct SomeStruct {
    var name : String
    init(name: String) {
        self.name = name
    }
    
    
}
