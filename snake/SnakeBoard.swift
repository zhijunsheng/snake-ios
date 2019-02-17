import Foundation

struct SnakeBoard: CustomStringConvertible {
    
    let cols: Int = 7
    let rows: Int = 7
    
    var description: String {
        var desc = ""
        for _ in 0..<rows {
            for _ in 0..<cols {
                desc.append(". ")
            }
            desc.append("\n")
        }
    
        
        return desc
    }
}
