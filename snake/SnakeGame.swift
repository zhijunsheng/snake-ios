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
    
    
    mutating func moveSnakeRight() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col + 1, row: snake[0].row))
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        snake = newSnake
        
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            let randomCol: Int = Int(arc4random()) % GridView.gridNum
            let randomRow: Int = Int(arc4random()) % GridView.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
    }
    
    mutating func moveSnakeDown() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col, row: snake[0].row + 1))
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
        
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            let randomCol: Int = Int(arc4random()) % GridView.gridNum
            let randomRow: Int = Int(arc4random()) % GridView.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
    }
    
    mutating func moveSnakeLeft() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col - 1, row: snake[0].row))
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            let randomCol: Int = Int(arc4random()) % GridView.gridNum
            let randomRow: Int = Int(arc4random()) % GridView.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
    }
    
    mutating func moveSnakeUp() {
        var newSnake: [SnakeCell] = []
        newSnake.append(SnakeCell(col: snake[0].col, row: snake[0].row - 1))
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        
        snake = newSnake
        
        if snake[0].col == fruit?.col && snake[0].row == fruit?.row {
            let randomCol: Int = Int(arc4random()) % GridView.gridNum
            let randomRow: Int = Int(arc4random()) % GridView.gridNum
            fruit = Fruit(col: randomCol, row: randomRow)
        }
    }
}
