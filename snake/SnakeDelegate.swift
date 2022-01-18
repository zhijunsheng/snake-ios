//
//  SnakeDelegate.swift
//  snake
//
//  Created by jichengye on 2022/1/13.
//  Copyright © 2022 GoldThumb Inc. All rights reserved.
//

import Foundation

protocol SnakeDelegate {
    func isOnSnake(col: Int, row: Int) -> Bool
}
