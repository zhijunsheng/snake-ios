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

        
       drawLine(withColor: .gray, fromX: 1, fromY: 1, toX: 1, toY: 1000)
        
        
        
        // use numberOfRows and numberOfCols to draw the board on screen
    }
    
    func drawLine(withColor color: UIColor, fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat) {
        let path = UIBezierPath()
        path.lineWidth = 0.5
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        color.setStroke()
        path.stroke()
    }
 
    func drawSnake() {
        print("inside drawSnake")
    }
    
    func drawFood() {
        print("inside drawFood")
    }
}
