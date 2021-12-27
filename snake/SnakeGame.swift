//
//  SnakeGame.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct SnakeGame: CustomStringConvertible {
    
    static let size = 17
    
    var snake: [SnakeCell] = [
        SnakeCell(col: 1, row: 2),
    ]
    
    mutating func moveLeft() {
        let singleCell = snake.first!
        
        let oldRow = singleCell.row
        let oldCol = singleCell.col
        
        let newRow = oldRow
        let newCol = oldCol - 1
        let newCell = SnakeCell(col: newCol, row: newRow)
        
        snake[0] = newCell
    }
    mutating func moveUp()  {
        let singleCell = snake.first!
        
        let oldRow = singleCell.row
        let oldCol = singleCell.col
        
        let newRow = oldRow - 1
        let newCol = oldCol
        let newCell = SnakeCell(col: newCol, row: newRow)
        
        snake[0] = newCell
    }
    mutating func moveDown() {
        let singleCell = snake.first!
        
        let oldRow = singleCell.row
        let oldCol = singleCell.col
        
        let newRow = oldRow + 1
        let newCol = oldCol
        let newCell = SnakeCell(col: newCol, row: newRow)
        
        snake[0] = newCell
    }
    mutating func moveRight() {
        let singleCell = snake.first!

        // step 1: we need to know where the cell is located
        let oldRow = singleCell.row
        let oldCol = singleCell.col
        
        // step 2: we create a new cell at the new location
        let newRow = oldRow
        let newCol = oldCol + 1
        let newCell = SnakeCell(col: newCol, row: oldRow)
        
        
        // step 3:  snake[0], snake[1],
        snake[0] = newCell
        
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

        



