//
//  SnakeGame.swift
//  snake
//
//  Created by Felix Lo on 2021-12-07.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct SnakeGame {
    static let gridNum: Int = 20
    var snake: [SnakeCell] = []
    var gameOver = false
    var fruit: Fruit?
    
    func reset() {
        
    }
    
    func createNewHead(direction: Direction) -> SnakeCell {
        var newHead: SnakeCell

        switch direction {
        case .east:
            newHead = SnakeCell(col: snake[0].col + 1, row: snake[0].row)
        case .north:
            newHead = SnakeCell(col: snake[0].col, row: snake[0].row - 1)
        case .south:
            newHead = SnakeCell(col: snake[0].col, row: snake[0].row + 1)
        case .west:
            newHead = SnakeCell(col: snake[0].col - 1, row: snake[0].row)
        case .none:
            newHead = snake[0]
        }

        return newHead
    }
    
    mutating func moveSnake(direction: Direction) {
        if direction == .none {
            return
        }
        
        var newSnake: [SnakeCell] = []
        newSnake.append(createNewHead(direction: direction))
        
        if newSnake[0].col >= SnakeGame.gridNum || newSnake[0].col < 0 ||
            newSnake[0].row >= SnakeGame.gridNum || newSnake[0].row < 0 {
            gameOver = true
            return
        }
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        for i in 1 ..< snake.count {
            if newSnake[0].col == snake[i].col && newSnake[0].row == snake[i].row {
                gameOver = true
                return
            }
        }
        
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            newSnake.append(snake[snake.count - 1])
            let randomCol: Int = Int(arc4random()) % SnakeGame.gridNum
            let randomRow: Int = Int(arc4random()) % SnakeGame.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
        
        snake = newSnake
    }
}
