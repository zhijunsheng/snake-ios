//
//  Board.swift
//  snake
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation
struct Board: CustomStringConvertible {
    
    let rows = 36
    let cols = 25
    
    func isXY(x: Int, y: Int, onSnake snake: [Point]) -> Bool {
        var onSnake = false
        for cell in snake {
            if cell.col == x && cell.row == rows - y + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    var description: String {
        
        let snake = [// Snake 1
            Point(row: 4, col: 18),
            Point(row: 4, col: 17),
            Point(row: 3, col: 17),
            Point(row: 3, col: 16),]
    
        
        let bottomChars = " ✪ A B C D E F G H J K L M N O P Q R S T U V W X Y Z"
        let bottomCharsArr = Array(bottomChars) // bottomCharsArr = [" ", "✪", " ", "A", ...]
        let subString = bottomCharsArr[0 ... cols * 2 + 1]
        
        var boardString = ""
        for y in 1...rows {
            if rows - y + 1 >= 10 {
                
                boardString += "\(rows - y + 1) "
            } else {
                boardString += " \(rows - y + 1) "
            }
            
            for x in 1...cols {
                if isXY(x: x, y: y, onSnake: snake) {
                    boardString += "O "
                } else {
                    boardString += ". "
                }
            }
            boardString += "\n"
        }
        boardString += subString + "\n"
        return boardString
    }
}
