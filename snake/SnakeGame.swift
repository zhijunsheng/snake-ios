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
    
    var description: String {
        var desc: String = ""
        desc.append("\n  ")
        for i in 0 ..< SnakeGame.gridSize {
            desc.append(" \(i % 10)")
        }
        desc.append("\n")
        for i in 0 ..< SnakeGame.gridSize {
            if i < 10 {
                desc.append(" ")
            }
            desc.append("\(i)")
            for _ in 0 ..< SnakeGame.gridSize {
                desc.append(" .")
            }
            desc.append("\n")
        }
        
        return desc
    }
    
    
}
