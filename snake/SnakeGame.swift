//
//  SnakeGame.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-16.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

struct SnakeGame: CustomStringConvertible {
    
    static let size = 10
    
    
    var snake: [SnakeCell] = []

    var description: String {
        var desc = ""
        
        for k in 0 ..< SnakeGame.size {
            
            for a in 0 ..< SnakeGame.size {
                
                desc.append(". ")
            }
            desc.append("\n")
        }
        return desc
    }
}
