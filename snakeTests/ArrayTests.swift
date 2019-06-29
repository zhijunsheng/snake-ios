import XCTest

class ArrayTests: XCTestCase {

    func testStringArray() {
        let names: [String] = ["apple", "is", "on", "elephant"]
        print(names[3])
        
        for chess in names {
            print(chess)
        }
    }
    
    func testIntArray() {
        var numbers: [Int] = [23, 0, -13, 100]
        print(numbers[0])
        print(numbers[1])
        print(numbers[2])
        print(numbers[3])
        numbers.append(333)
        print(numbers[4])

        for i in 0..<4 {
           print(numbers[i])
        }

        for bear in numbers {
            print(bear)
        }
    }


}
