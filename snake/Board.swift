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
    
    /*
     10 . . . . .
     09 . . . . .
     08 . . . . .
     07 . . . . .
     06 . . . . .
     05 . . . . .
     04 . . . . .
     03 . . . . .
     02 . . . . .
     01 . . . . .
     ++ A B C D E
     */
    
    
    var debugDescription: String {

        // creat 4 adjacent points
        // try to insert the points in the below
        
//        let snake = [Point]()
//        let point0 = Point(row: 1, col: 1)
//        let point1 = Point(row: 1, col: 2)
//        let point2 = Point(row: 1, col: 3)
//        let point3 = Point(row: 1, col: 4)
        
        let snake = [
            Point(row: 1, col: 1),
            Point(row: 1, col: 2),
            Point(row: 1, col: 3),
            Point(row: 1, col: 4),
        ]
        
        var brdDesc = ""
        let COLSNAME = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"]
        
        for i in 1...rows {
            if i > rows - 9 {
                brdDesc += "0\(rows - i + 1) "
            }
            else {
                brdDesc += "\(rows - i + 1) "
            }
            for j in 1...cols {
//                for k in 0..<snake.count {
//                    if snake[k].row == i && snake[k].col == j {
//                        brdDesc += "o "
//                    }
//                    else {
                        brdDesc += ". "
//                    }
//                }
//                if point0.row == rows - i && point0.col == j {
//                    brdDesc += "o "
//                }
//                else if point1.row == rows - i && point1.col == j {
//                    brdDesc += "o "
//                }
//                else if point2.row == rows - i && point2.col == j {
//                    brdDesc += "o "
//                }
//                else if point3.row == rows - i && point3.col == j {
//                    brdDesc += "o "
//                }
//                else {
//                    brdDesc += ". "
//                }
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
