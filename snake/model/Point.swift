//
//  Point.swift
//  snake
//
//  Created by Bowen Lin on 2018-06-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Point: Equatable {
    var row: Int
    var col: Int

    static func ==(lhs: Point, rhs: Point) -> Bool {
        
        return lhs.row == rhs.row && lhs.col == rhs.col
    }
}
