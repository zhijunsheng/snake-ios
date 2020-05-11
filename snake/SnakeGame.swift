//
//  SnakeGame.swift
//  snake
//
//  Created by Grace Huang on 4/23/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import Foundation


struct SnakeGame {
    let squareSides = 20
    var snake: [SnakeCell] = [SnakeCell]()
    var appleX: Int = 5
    var appleY: Int = 5
    var points: Int = 0
    
    
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
    
    mutating func randomApple() {
        appleX = Int(arc4random() % UInt32(squareSides))
        appleY = Int(arc4random() % UInt32(squareSides))
    
        while onSnake(x: appleX, y: appleY) {
            appleX = Int(arc4random() % UInt32(squareSides))
            appleY = Int(arc4random() % UInt32(squareSides))
        }
        // will only break when the snake fills the board
    }
    
    func onSnake(x: Int, y: Int) -> Bool {
        for cell in snake {
            if x == cell.col && y == cell.row {
                return true
            }
        }
        return false
    }
    
    mutating func eat() {
        appleX = 1000
        appleY = 1000
        
        points = points + 1
        print("Points:", points)
        
        
        
        randomApple()
       
        
        snake.append(SnakeCell(col: snake[snake.count - 1].col, row: snake[snake.count - 1].row - 1))
    }
}


