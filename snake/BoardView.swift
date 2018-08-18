//
//  BoardView.swift
//  snake
//
//  Created by Sharon Chen on 2018-07-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let rows = 18
    let cols = 10
    
    let side: CGFloat = 20
    
    var snake = [CGPoint(x: 30, y: 30)]

    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
    }
    
    func drawGrid() {
        let path = UIBezierPath()
        let originX = (frame.width - CGFloat(cols) * side) / 2
        let originY = (frame.height - CGFloat(rows) * side) / 2
        
        // horizontal
        
        for i in 0 ... rows {
            drawLine(fromX: originX,
                     fromY: originY + CGFloat(i) * side,
                     toX: originX + CGFloat(cols) * side,
                     toY: originY + CGFloat(i) * side)
        }
        
        // vertical
        
        for i in 0 ... cols {
            drawLine(fromX: originX + CGFloat(i) * side,
                     fromY: originY,
                     toX: originX + CGFloat(i) * side,
                     toY: originY + CGFloat(rows) * side)
        }
        
        path.stroke()
    }
    
    func drawSnake() {
        
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat) {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        
        path.stroke()
    }

}

