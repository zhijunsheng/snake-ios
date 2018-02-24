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
    
    func isFoodOrSnakePoint(row: Int, col: Int, points: [Point]) -> Bool {
        
        for point in points {
            if point.row == row && point.col == col {
                return true
            }
        }
        return false
    }
    
  mutating  func moveSnakeLeft() {
        snake[0] = Point(row: snake[0].row, col: snake[0].col - 1)
        
    for (index, _) in snake.enumerated() {
            if index > 0 {
                snake[index] = snake[index - 1]
            }
        }
    }
    
    var description: String {
        
        let bottomChars = " + A B C D E F G H J K L M N O P Q R S T"
        
        var dots = ""
        
        for i in (1...numRows).reversed() {
            if i <= 9 {
                dots += " \(i)"
            } else {
                dots += "\(i)"
            }
            for j in 1...numCols {
                
                if isFoodOrSnakePoint(row: i, col: j, points: food) == true {
                    dots += " x"
                } else if isFoodOrSnakePoint(row: i, col: j, points: snake) == true {
                    dots += " o"
                } else {
                    dots += " ."
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
