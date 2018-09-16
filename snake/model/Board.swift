//
//  Board.swift
//  snake
//
//  Created by Bowen Lin on 2018-06-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    
    // define a snake here
    var snake = [Point(row: 3, col: 5),
                 Point(row: 4, col: 5),
                 Point(row: 4, col: 6),
                 Point(row: 4, col: 7),
//                                    Point(row: 4, col: 8)
    ]
    
    var description: String {
        return generateBoardDesc(rows: 10, columns: 10)

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
            print("got here")
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
            print("got here")
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
            print("got here")
            i += 1
            t += 1
        }
        snake[0].col -= 1
    }

    

    
    func generateBoardDesc(rows: Int, columns: Int) -> String {
        var number = -1
        
        print(snake)
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        var boardDesc = ""
        var r = rows
        for _ in snake {
            number += 1
        }
        while r > 0 {
            if r < 10 {
                boardDesc += " \(r)"
            } else {
                boardDesc += "\(r)"
            }
            for c in 1...columns {
                if c == columns {
                    boardDesc += numberOfDots + "\n"
                } else if ifInSnakeCells(r: r, c: c, snake: snake, numberOfCells: number) {
                    boardDesc += " 0"
                }
                else {
                    boardDesc += numberOfDots
                }
            }
            r -= 1
        }
        boardDesc += letters.prefix(2 + columns * 2)
        return boardDesc
    }
    


    func ifInSnakeCells(r: Int, c: Int, snake: [Point], numberOfCells: Int) -> Bool {
        for i in 0...numberOfCells {
            if r == snake[i].row && c == snake[i].col {
                return true
            }
        }
        return false
    }
}

