//
//  Board.swift
//  snake
//
//  Created by Bowen Lin on 2018-06-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomStringConvertible {
    var description: String {
        return generateBoardDesc(rows: 10, columns: 10)
    }
    
    func generateBoardDesc(rows: Int, columns: Int) -> String {
        let numberOfDots = " ."
        let letters = " + A B C D E F G H I J K L M N O P Q R W T U V W X Y Z"
        var boardDesc = ""
        
        for i in 1...rows {
            if i < 10 {
                boardDesc += " \(i)"
            } else {
                boardDesc += "\(i)"
            }
            for a in 1...columns {
                if a == columns {
                    boardDesc += numberOfDots + "\n"
                } else {
                    boardDesc += numberOfDots
                }
            }
        }
        boardDesc += letters.prefix(2 + columns * 2)
        return boardDesc
    }
}
