//
//  SnakeGame.swift
//  snake
//
//  Created by Felix Lo on 2020/7/13.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//
//

import Foundation

struct SnakeGame {
    var snake: [SnakeCell] = []
    
    var fruit: Fruit?
    
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
        }

        return newHead

    }
    
    mutating func moveSnake(direction: Direction) {
        var newSnake: [SnakeCell] = []
        newSnake.append(createNewHead(direction: direction))
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            newSnake.append(snake[snake.count - 1])
            let randomCol: Int = Int(arc4random()) % GridView.gridNum
            let randomRow: Int = Int(arc4random()) % GridView.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
        
        snake = newSnake
        
    }
}
