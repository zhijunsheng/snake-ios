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
    let foodLocationX: Int = Int(arc4random_uniform(20) + 1)
    let foodLocationY: Int = Int(arc4random_uniform(35) + 1)
    
    // define a snake here
    var snake = [Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
                 Point(row: 1, col: 1),
    ]
    
    var description: String {
        
        
//        var number = -1
        
        print(snake)
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        var boardDesc = ""
        var r = rows
//        for _ in snake {
//            number += 1
//        }
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
        
        var t = 0
        var i = 1
        
        while t < snake.count - 1{
            snake[snake.count - 1 - t] = snake[snake.count - 1 - i]
            i += 1
            t += 1
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
