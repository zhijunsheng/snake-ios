//
//  Board.swift
//  snake
//
//  Created by Peter Shi on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation
import UIKit

struct Board: CustomStringConvertible {
    
    var rows: Int
    var cols: Int
    var snake: [Point]
    var food = [Point]()
    
    mutating  func moveSnakeLeft() {
        if snake.count == 0 {
            return
        }
        
        var newSnake = [Point]()
        
        newSnake.append(Point(row: snake[0].row, col: snake[0].col - 1))
        
        for (index, _) in snake.enumerated() {
            if index > 0 {
                newSnake.append(snake[index - 1])
            }
        }
        snake = newSnake
        
        for i in food.indices {
            if snake[0] == food[i] {
                food.remove(at: i)
                snake.append(snake[snake.count - 1])
                break
            }
        }
        
        for j in 1...snake.count - 1 {
            if snake[0] == snake[j] {
                snake.removeAll()
                break
            }
        }
    }
    
    mutating  func moveSnakeRight() {
        if snake.count == 0 {
            return
        }
        
        var newSnake = [Point]()
        
        newSnake.append(Point(row: snake[0].row, col: snake[0].col + 1))
        
        for (index, _) in snake.enumerated() {
            if index > 0 {
                newSnake.append(snake[index - 1])
            }
        }
        snake = newSnake
        
        for i in food.indices {
            if snake[0] == food[i] {
                food.remove(at: i)
                snake.append(snake[snake.count - 1])
                break
            }
        }
        
        for j in 1...snake.count - 1 {
            if snake[0] == snake[j] {
                snake.removeAll()
                break
            }
        }
    }
    
    mutating  func moveSnakeUp() {
        if snake.count == 0 {
            return
        }
        
        var newSnake = [Point]()
        
        newSnake.append(Point(row: snake[0].row + 1, col: snake[0].col))
        
        for (index, _) in snake.enumerated() {
            if index > 0 {
                newSnake.append(snake[index - 1])
            }
        }
        snake = newSnake
        
        for i in food.indices {
            if snake[0] == food[i] {
                food.remove(at: i)
                snake.append(snake[snake.count - 1])
                break
            }
        }
        
        for j in 1...snake.count - 1 {
            if snake[0] == snake[j] {
                snake.removeAll()
                break
            }
        }
    }
    
    mutating  func moveSnakeDown() {
        if snake.count == 0 {
            return
        }
        
        var newSnake = [Point]()
        
        newSnake.append(Point(row: snake[0].row - 1, col: snake[0].col))
        
        for (index, _) in snake.enumerated() {
            if index > 0 {
                newSnake.append(snake[index - 1])
            }
        }
        snake = newSnake
        
        for i in food.indices {
            if snake[0] == food[i] {
                food.remove(at: i)
                snake.append(snake[snake.count - 1])
                break
            }
        }
        
        for j in 1...snake.count - 1 {
            if snake[0] == snake[j] {
                snake.removeAll()
                break
            }
        }
    }
    
    mutating func mrSnakeWillMoveToTheLeft() {
        let tmp = snake[0].col
        for (idx, _) in snake.enumerated() {
            if idx != 0 {
                    snake[idx].col = snake[idx - 1].col
                    snake[idx].row = snake[idx - 1].row
                
            }
        }
        snake[0].col = tmp - 1
    }
    
    func isXY(x: Int, y: Int, headOfSnake snake: [Point]) -> Bool {
        var headOfSnake = false
        if snake[0].col == x && snake[0].row == rows - y + 1 {
            headOfSnake = true
        }
        return headOfSnake
    }
    
    func isXY(x: Int, y: Int, onPoints points: [Point]) -> Bool {
        var onSnake = false
        for cell in points {
            if cell.col == x && cell.row == rows - y + 1 {
                onSnake = true
                break
            }
        }
        return onSnake
    }
    
    func isSnakeDead() -> Bool {
        if snake.count == 0 {
            return false
        }
        
        let head = snake[0]
        
        if head.col < 1 || head.row < 1 || head.col > cols || head.row > rows {
            return true
        }
        
        for j in 1...snake.count - 1 {
            if head == snake[j] {
//                self.snake = []
//                snake.removeAll()
                return true
            }
        }
        return false
    }
    
    var description: String {
       
        let bottomChars = " ✪ A B C D E F G H J K L M N O P Q R S T U V W X Y Z"
        let bottomCharsArr = Array(bottomChars) // bottomCharsArr = [" ", "✪", " ", "A", ...]
        let subString = bottomCharsArr[0 ... cols * 2 + 1]
        
        var boardString = ""
        for y in 1...rows {
            if rows - y + 1 >= 10 {
                boardString += "\(rows - y + 1) "
            } else {
                boardString += " \(rows - y + 1) "
            }
            
            for x in 1...cols {
                if isXY(x: x, y: y, onPoints: snake) {
                    if isXY(x: x, y: y, headOfSnake: snake) {
                        boardString += "U "
                    } else {
                        boardString += "O "
                    }
                } else if isXY(x: x, y: y, onPoints: food) {
                    boardString += "Q "
                } else {
                    boardString += ". "
                }

            }
            boardString += "\n"
            
        }
        ////
        ///Int(   )
        // hi!
        boardString += subString + "\n"
        return boardString
    }
}
