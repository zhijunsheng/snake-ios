//
//  Board.swift
//  snake
//
//  Created by Kevin on 2018-08-23.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Board: CustomDebugStringConvertible {
    let rows: Int
    let cols: Int
    
    var debugDescription: String {

        var brdDesc = ""
        let COLSNAME = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
        
        for i in 0..<rows {
            if i > rows - 10 {
                brdDesc += "0\(rows - i) "
            }
            else {
                brdDesc += "\(rows - i) "
            }
            for _ in 0..<cols {
                brdDesc += ". "
            }
            brdDesc += "\n"
        }
        brdDesc += "++ "
        
        for j in 0..<cols {
            brdDesc += "\(COLSNAME[j]) "
        }
        brdDesc += "\n"
        return brdDesc
    }
    
}
