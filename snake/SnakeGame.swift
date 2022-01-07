//
//  SnakeGame.swift
//  snake
//
//  Created by jichengye on 2022/1/4.
//  Copyright © 2022 GoldThumb Inc. All rights reserved.
//
import Foundation

struct SnakeGame: CustomStringConvertible {
    
    static let gridSize: Int = 9
    
    var snake: [SnakeCell] = [
        SnakeCell(col: 5, row: 4),
        SnakeCell(col: 6, row: 4)
    ]
    
    func isOnSnake(col: Int, row: Int) -> Bool {
        for snakeCell in snake {
            if snakeCell.col == col && snakeCell.row == row {
                return true
            }
        }
        return false
    }
    
    var description: String {
        var desc: String = ""
        desc.append("\n  ")
        for i in 0 ..< SnakeGame.gridSize {
            desc.append(" \(i % 10)")
        }
        desc.append("\n")
        for r in 0 ..< SnakeGame.gridSize {
            if r < 10 {
                desc.append(" ")
            }
            desc.append("\(r)")
            for c in 0 ..< SnakeGame.gridSize {
                if isOnSnake(col: c, row: r) {
                    desc.append(" S")
                } else {
                    desc.append(" .")
                }
            }
            desc.append("\n")
        }
        return desc
    }
}
