//
//  SnakeDelegate.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-23.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import Foundation

protocol SnakeDelegate {
    func snakeCellAt(col: Int, row: Int) -> SnakeCell?
}
