

import XCTest

class SampleTests: XCTestCase {
    
    func testExample() {

//         sayHelloTo(person: "Lucas")
//         sayHelloTo(person: "Marius")
 
        let x = times(a: 4, b: 5, c: 3, d: 6)
        print("x = \(x)")
        
        
        let c = add(a: 23, b: 3)
        print("c is \(c)")
        
        
    }
    
    func times(a: Int, b: Int, c: Int, d: Int, ) -> Int {
        let product = a * b * c
        return product
    }
    
    
    
    
    func add(a: Int, b: Int) -> Int {
        let sum = a + b
        return sum
    }
    
    func sayHelloTo(person: String) {
        print("Hello \(person)")
    }
    
    func outputTwoLines() {
        print("This is line 1")
        print("This is line 2")
    }
    
}
