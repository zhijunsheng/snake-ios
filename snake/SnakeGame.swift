//
//  SnakeGame.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct SnakeGame: CustomStringConvertible {
    
    static let size = 17
    
    var snake: [SnakeCell] = [
        SnakeCell(col: 1, row: 2),
        SnakeCell(col: 1, row: 3),
        SnakeCell(col: 1, row: 4),
        SnakeCell(col: 1, row: 5),
    ]
    
    mutating func moveLeft() {
        
        var newSnake: [SnakeCell] = []
        let oldHead = snake[0]
        let newHead = SnakeCell(col: oldHead.col - 1, row: oldHead.row)
        newSnake.append(newHead)
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
        
    }
    mutating func moveUp()  {
        
        var newSnake: [SnakeCell] = []
        let oldHead = snake[0]
        let newHead = SnakeCell(col: oldHead.col, row: oldHead.row - 1)
        newSnake.append(newHead)
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
    mutating func moveDown() {

        var newSnake: [SnakeCell] = []
        let oldHead = snake[0]
        let newHead = SnakeCell(col: oldHead.col, row: oldHead.row + 1)
        newSnake.append(newHead)
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
    mutating func moveRight() {
        
        var newSnake: [SnakeCell] = []
        let oldHead = snake[0]
        let newHead = SnakeCell(col: oldHead.col + 1, row: oldHead.row)
        newSnake.append(newHead)
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
        
    }

    func snakeCellAt(col: Int, row: Int) -> SnakeCell? {
        for cell in snake {
            if cell.col == col && cell.row == row{
                return cell
            }
        }
        return nil
    }
    
    var description: String {
        var desc = "   "
        
        for i in 0 ..< SnakeGame.size {
            desc.append("\(  i % 10  ) ")
        }
        
        desc.append("\n")
        
        for r in 0 ..< SnakeGame.size {
            if r < 10 {
                desc.append(" ")
            }
            desc.append("\(r) ")
            
            for c in 0 ..< SnakeGame.size {
                let cell = snakeCellAt(col: c, row: r)
                
                if cell == nil {
                    desc.append(". ")
                } else {
                    desc.append("s ")
                }
            }
            desc.append("\n")
        }
        
        return desc
    }
}

        



