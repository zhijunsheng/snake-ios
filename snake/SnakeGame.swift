//
//  SnakeGame.swift
//  snake
//
//  Created by Fergus Chen on 2021-12-23.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct  SnakeGame: CustomStringConvertible {
    static let gridSize: Int = 16
    var description: String {
        var desc = ""
        desc.append("  ")
        for i  in  0 ..< SnakeGame.gridSize {
            desc.append(" ")
            desc.append("\(i % 10)")
        }
        
        desc.append("\n")
        for  i in  0 ..< SnakeGame.gridSize {
            if  i < 10 {
                desc.append(" ")
            }
            desc.append("\(i)")
            for  _ in  0 ..< SnakeGame.gridSize{
           
                desc.append(" .")
            }
            desc.append("\n")
        }

        return desc
        
    }
    
    // 13 % 10 => 3, 3 % 10 = 3
}

