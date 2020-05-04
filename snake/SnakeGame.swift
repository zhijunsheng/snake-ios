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

    
    mutating func updateSnakeWith(head: SnakeCell) {
        var newSnake: [SnakeCell] = [SnakeCell]()

        newSnake.append(head)

        for i in 0..<snake.count - 1 {
            newSnake.append(snake[i])
        }
        snake = newSnake
        newSnake.removeAll()
    }
    
    mutating func moveUp() {
        updateSnakeWith(head: SnakeCell(col: snake[0].col, row: snake[0].row - 1))
    }
    
    mutating func moveLeft() {
        updateSnakeWith(head: SnakeCell(col: snake[0].col - 1, row: snake[0].row))
    }
    
    mutating func moveRight() {
        updateSnakeWith(head: SnakeCell(col: snake[0].col + 1, row: snake[0].row))
    }
    
    mutating func moveDown() {
        updateSnakeWith(head: SnakeCell(col: snake[0].col, row: snake[0].row + 1))
    }
}


