//
//  SnakeGame.swift
//  snake
//
//  Created by Fergus Chen on 2021-12-23.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct  SnakeGame: CustomStringConvertible {
    static let gridSize: Int = 6
    /*
     
     0 1 2 3 4 5 6
   0 . . . . . . .
   0 . . . . . . .
   0 . . . . . . .
   0 . . . . . . .
   0 . . . . . . .
     
     */
    var description: String {
        var desc = ""
        for  _ in  0 ..< SnakeGame.gridSize {
            desc.append(" " )
        }
        desc.append("\n")
        for  i in  0 ..< SnakeGame.gridSize {
            desc.append( "\(i) ")
            for  _ in 0 ..< SnakeGame.gridSize {
                desc.append(" ." )
            }
            desc.append("\n")
            
        }
        return desc
        
    }
    
    
}

