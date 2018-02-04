//
//  BoardView.swift
//  snake
//
//  Created by Nicole Han on 2018-01-29.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var numberOfRows = 0
    var numberOfCols = 0

    override func draw(_ rect: CGRect) {
        print("drawn")
        
        drawBoard()
        drawSnake()
        drawFood()
    }

    func drawBoard() {
        print("inside drawBoard")
        
        // use numberOfRows and numberOfCols to draw the board on screen
    }
 
    func drawSnake() {
        print("inside drawSnake")
    }
    
    func drawFood() {
        print("inside drawFood")
    }
}
