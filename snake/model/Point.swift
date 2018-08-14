//
//  Point.swift
//  snake
//
//  Created by Nicole Han on 2018-01-26.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import Foundation

struct Point: Equatable {
    var row : Int
    var col : Int
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.row == rhs.row && lhs.col == rhs.col
    }
}
