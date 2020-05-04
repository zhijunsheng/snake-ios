//
//  SnakeGame.swift
//  snake
//
//  Created by Angie Yan on 2020-04-29.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import Foundation

struct SnakeGame {
    var snake: [SnakeCell] = []
    
    mutating func moveLeft() {
        // snake[0] at (3, 2)
        // snake[0].col == 3
        // snake[0].row == 2
        print("\(snake[0].col)")
        
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col - 1, row: snake[0].row))
        snake = newSnake
    }
    
    mutating func moveRight() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col + 1, row: snake[0].row))
        snake = newSnake
    }
    
    mutating func moveUp() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col, row: snake[0].row - 1))
        snake = newSnake
    }
    
    mutating func moveDown() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col, row: snake[0].row + 1))
        snake = newSnake
    }
    
    mutating func moveDownDiagonal() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col + 1, row: snake[0].row + 1))
        snake = newSnake
    }
}


