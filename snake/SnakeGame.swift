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
        var newSnake: [SnakeCell] = [SnakeCell]()
        let head = SnakeCell(col: snake[0].col, row: snake[0].row - 1)

        newSnake.append(head)
        
        for i in 0..<snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
    
    mutating func moveLeft() {
        var newSnake: [SnakeCell] = [SnakeCell]()
        let head = SnakeCell(col: snake[0].col - 1, row: snake[0].row)
        
        newSnake.append(head)
        
        for i in 0..<snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
    
    mutating func moveRight() {
        var newSnake: [SnakeCell] = [SnakeCell]()
        let head = SnakeCell(col: snake[0].col + 1, row: snake[0].row)
        
        newSnake.append(head)
        
        for i in 0..<snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
    
    mutating func moveDown() {
        var newSnake: [SnakeCell] = [SnakeCell]()
        let head = SnakeCell(col: snake[0].col, row: snake[0].row + 1)
        
        newSnake.append(head)
        
        for i in 0..<snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
    }
}


