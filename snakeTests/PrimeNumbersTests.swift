import XCTest

class PrimeNumbersTests: XCTestCase {
    
    
    func testPrimeNumbers() {
        let num = 333333331 // 331, 3331, 33331, ...
        for prnu in 2..<num {
            let remainder = num % prnu
            if remainder == 0 {
                print("⛔️")
                let answer = num / prnu
                print(answer)
            }
        }
    }
    
    
}
