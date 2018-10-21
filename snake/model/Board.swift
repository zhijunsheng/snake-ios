//
//  Board.swift
//  snake
//
//  Created by Bowen Lin on 2018-06-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    
    var rows = 0
    var columns = 0
    
    var food = [Point]()
    
    // define a snake here
    var snake = Array<Point>(repeating:Point(row: 1, col: 1), count: 20)
    var description: String {

        print(snake)
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        var boardDesc = ""
        var r = rows

        while r > 0 {
            if r < 10 {
                boardDesc += " \(r)"
            } else {
                boardDesc += "\(r)"
            }
            for c in 1...columns {
                if c == columns {
                    boardDesc += numberOfDots + "\n"
                } else if isPointInPointArray(r: r, c: c, pointArray: snake) {
                    boardDesc += " 0"
                } else if isPointInPointArray(r: r, c: c, pointArray: food) {
                    boardDesc += " ø"
                } else {
                    boardDesc += numberOfDots
                }
            }
            r -= 1
        }
        boardDesc += letters.prefix(2 + columns * 2)
        return boardDesc
    }
    
    // TODO: make sure that food does not spawn on snake body
    
    func makeRandFoodPoint() -> Point {
        var randCol = Int(arc4random_uniform(UInt32(columns)) + 1)
        var randRow = Int(arc4random_uniform(UInt32(rows)) + 1)
        
        var p = Point(row: randRow, col: randCol)
        for a in snake {
            if randCol != a.col && randRow != a.row {
                p = Point(row: randRow, col: randCol)
            } else {
                while randCol == a.col && randRow == a.row {
                     randCol = Int(arc4random_uniform(UInt32(columns)) + 1)
                     randRow = Int(arc4random_uniform(UInt32(rows)) + 1)
                }
            p = Point(row: randRow, col: randCol)
            }
        }
        return p
    }
    
    mutating func snakeGrows(){
        if snake[0].col == food[0].col && snake[0].row == food[0].row {
            for _ in 1...3 {
                snake.append(Point(row: snake[snake.count - 1].row, col: snake[snake.count - 1].col))
            }
            food = [makeRandFoodPoint()]
        }
    }
    
    mutating func moveSnakeUp() {
        var t = 0
        var i = 1

        while t < snake.count - 1{
            snake[snake.count - 1 - t] = snake[snake.count - 1 - i]
            i += 1
            t += 1
        }
        snake[0].row -= 1
    }
    
    mutating func moveSnakeDown() {
        
        for i in 1..<snake.count {

            snake[snake.count - i] = snake[snake.count - i - 1]
            // snake moves starting from end to beggining
        }
        
        
        
        snake[0].row += 1
    }
    
    mutating func moveSnakeRight() {
        var t = 0
        var i = 1
        
        while t < snake.count - 1{
            snake[snake.count - 1 - t] = snake[snake.count - 1 - i]
            i += 1
            t += 1
        }
        snake[0].col += 1
    }

    mutating func moveSnakeLeft() {
        var t = 0
        var i = 1
        
        while t < snake.count - 1{
            snake[snake.count - 1 - t] = snake[snake.count - 1 - i]
            i += 1
            t += 1
        }
        snake[0].col -= 1
    }
    
    func isPointInPointArray(r: Int, c: Int, pointArray: [Point]) -> Bool {
        for i in 0..<pointArray.count {
            if r == pointArray[i].row && c == pointArray[i].col {
                return true
            }
        }
        return false
    }
}
