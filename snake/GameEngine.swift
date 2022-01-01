//
//  GameEngine.swift
//  snake
//
//  Created by Lambert Lin on 2021/12/18.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct GameEngine: CustomStringConvertible {
    static let boardSize: Int = 7
    
    
    let snake: [SnakeCell] = [
        SnakeCell(col: 2, row: 1),
        SnakeCell(col: 2, row: 2),
        SnakeCell(col: 3, row: 2)
    ]
    
    /*
      
     0 1 2 3 4 5 6 7 8 9 10 11 12
   0 . . . . . . . . . . . . .
   1 . . . . . . . . . . . .
     . . . . . . . . .
     . . . . . . . . .
     . . . . . . . . .
     . . . . . . . . .
     
     */
    var description: String {
        
        var desc = ""
        desc.append("   ")
        for i in 0..<GameEngine.boardSize {
            desc.append("\(i % 10) ")
        }
        for i in 0..<GameEngine.boardSize {
            
            desc.append("\n")
            if i < 10 {
                desc.append(" ")
            }
            desc.append("\(i) ")
            
            for i in 0..<GameEngine.boardSize {
                desc.append(". ")
            }
        }
        
        return desc
    }
}
