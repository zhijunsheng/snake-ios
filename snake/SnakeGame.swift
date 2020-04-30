//
//  SnakeGame.swift
//  snake
//
//  Created by Grace Huang on 4/23/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import Foundation


struct SnakeGame {
    
    var snake: [SnakeCell] = [SnakeCell]()
    
    mutating func moveUp() {
        
//        snake.insert(SnakeCell(col: 12, row: 10), at: 0)
//        snake.insert(SnakeCell(col: 12, row: 11), at: 1)
//        snake.insert(SnakeCell(col: 12, row: 12), at: 2)
//        snake.insert(SnakeCell(col: 13, row: 12), at: 3)
//        snake.insert(SnakeCell(col: 14, row: 12), at: 4)
//        snake.insert(SnakeCell(col: 14, row: 11), at: 5)
        
//        for i in 1..<snake.count {
//            var snakeCell = snake[i]
//
//            snakeCell = snake[i - 1]
//
//        }
        
        
        var newSnake: [SnakeCell] = [SnakeCell]()
        let head = SnakeCell(col: snake[0].col, row: snake[0].row - 1)

        newSnake.append(head)
        newSnake.append(snake[0])
        newSnake.append(snake[1])
        newSnake.append(snake[2])
        newSnake.append(snake[3])
        newSnake.append(snake[4])

        
        snake = newSnake
        
    }
    
    
}


