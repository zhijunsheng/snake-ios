//
//  SnakeGame.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation
import UIKit

struct SnakeGame: CustomStringConvertible {
    
    static let size: Int = 22
    var fruit: Fruit = Fruit(col: -1, row: -1, fruitIndex: 0)
    
    var snake: [SnakeCell] = [
        SnakeCell(col: 1, row: 2),
        SnakeCell(col: 1, row: 3),
        SnakeCell(col: 1, row: 4),
        SnakeCell(col: 1, row: 5),
    ]
    
    mutating func changeDirection(fingerCol: Int, fingerRow: Int) {
        if fingerCol < snake[0].col {
            move(direction: .left)
            
        } else {
            move(direction: .right)
        }
    }
    
    mutating func updateFruit() {
        let randomCol: Int = Int(arc4random()) % SnakeGame.size
        let randomRow: Int = Int(arc4random()) % SnakeGame.size
        let randomIndex: Int = Int(arc4random()) % 5
        
        let nextFruit = Fruit(col: randomCol, row: randomRow, fruitIndex: randomIndex)
        fruit = nextFruit
    }

    func currentFruit() -> Fruit {
        return fruit
    }
    
    mutating func move(direction: Direction) {
        
        var newSnake: [SnakeCell] = []
        let oldHead = snake[0]
        var newHead:SnakeCell = SnakeCell(col: -1, row: -1)
        
        if direction == .up  {
            newHead = SnakeCell(col: oldHead.col, row: oldHead.row - 1)
            
        } else if direction == .right { 
            newHead = SnakeCell(col: oldHead.col + 1, row: oldHead.row)

        } else if direction == .left {
            newHead = SnakeCell(col: oldHead.col - 1, row: oldHead.row)
            
        } else if direction == .down {
            newHead = SnakeCell(col: oldHead.col, row: oldHead.row + 1)
        }
        
        newSnake.append(newHead)
        
        for i in 0 ..< snake.count - 1 {
            newSnake.append(snake[i])
        }
        let fruit = currentFruit()
        
        if newHead.col == fruit.col && newHead.row == fruit.row {
            newSnake.append(snake[snake.count - 1])
            
            updateFruit()
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

        



