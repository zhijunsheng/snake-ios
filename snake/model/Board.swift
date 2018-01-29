//
//  Board.swift
//  snake
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation



struct Board: CustomStringConvertible {
    
    var numRows : Int
    var numCols: Int
    var snake: [Point]
    var food: [Point]
    
    
    func isOnBoard(point: Point) -> Bool {
        return 1 <= point.row && point.row <= numRows &&
                1 <= point.col && point.col <= numCols
    }
    func isSnakePoint(row: Int, col: Int) -> Bool {
        if row == 4 && col == 4 || row == 4 && col == 5 || row == 3 && col == 6 || row == 3 && col == 5 || row == 3 && col == 7 {
            return true
        } else {
            return false
        }
    }
    func isFoodPoint(row: Int, col: Int) -> Bool {
        if row == 6 && col == 2 || row == 2 && col == 3 || row == 5 && col == 8 {
            return true
        } else {
            return false
        }
    }
    
    var description: String {
        
        for point in snake {
            print("\(point.row) , \(point.col)")
        }
        
        let bottomChars = "+ A B C D E F G H J K L M N O P Q R S T"
        
        var dots = ""
        
        for i in (1...numRows).reversed() {
            dots += "\(i)"
            for j in 1...numCols {
                if isSnakePoint(row: i, col: j) == false && isFoodPoint(row: i, col: j) == false {
                    dots += " ."
                } else if isFoodPoint(row: i, col: j) == true {
                    dots += " x"
                } else if isSnakePoint(row: i, col: j) == true {
                    dots += " o"
                }
            }
            dots += "\n"
        }
        
        let x = numCols * 2 + 1
        
        let bottomCharsArray = Array(bottomChars)
        let subString = bottomCharsArray[0...x]

        dots += subString
        
        return ("\(dots)")
        
    }
    

}
