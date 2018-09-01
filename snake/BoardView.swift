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
    
    var originX : CGFloat = 0
    var originY : CGFloat = 0
    
    var snk = [Point]()
    


    override func draw(_ rect: CGRect) {
        originX = (frame.width - CGFloat(cols) * side) / 2
        originY = (frame.height - CGFloat(rows) * side) / 2
        drawGrid()
        drawSnake()
        drawFruit(fruit: "🍎", col: 2, row: 5)
    }
    
    func drawFruit(fruit: String, col: Int, row: Int) {
        fruit.draw(at: CGPoint(x: originX + CGFloat(col - 1) * side, y: originY + CGFloat(rows - row) * side) )
    }
    
    func drawGrid() {
        let path = UIBezierPath()
        
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
        
        for i in snk.indices {
            let row0 = originY + CGFloat(rows - snk[i].row) * side
            let col0 = originX + CGFloat(snk[i].col - 1) * side
            drawRoundSquare(x: col0, y: row0, colour: .blue)
        }
        
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat) {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        
        path.stroke()
    }
    
    func drawRoundSquare(x: CGFloat, y: CGFloat, colour: UIColor) {
        let rect = CGRect(x: x, y: y, width: side, height: side)
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 5)
        colour.setFill()
        
        path.fill()
    }

}

