//
//  BoardView.swift
//  snake
//
//  Created by Peter Shi on 2018-07-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let cols = 12
    let rows = 15 // hi.
    let side: CGFloat = 23.0
    let headColor = UIColor(red: 0/255,
                            green: 175/255,
                            blue: 0/255,
                            alpha: 0.9)
    
    let tailColor = UIColor(red: 249/255,
                            green: 233/255,
                            blue: 117/255,
                            alpha: 1)
    
    var snakeCells = [CGPoint]()
    var snake = [Point]()

    override func draw(_ rect: CGRect) {
        let originX = (frame.width -  side * CGFloat(cols)) / 2
        let originY = (frame.height - side * CGFloat(rows)) / 3
        
        snake = [Point(row: 15, col: 1),
                 Point(row: 15, col: 2),
        ]
        
        snakeCells = [CGPoint(x: originX, y: originY),
                     CGPoint(x: originX + side, y: originY),
                     //        CGPoint(x: 20.0, y: 20.0),
            //        CGPoint(x: 20.0, y: 20.0),
        ]
        // calculate snakesXYs[0] and snakesXYs[1]
//        snakesXYs[0] = //using snake[0]
//        snakesXYs[1] = //side
        
        // horizontally draw some lines
        
        for i in 0...rows {
            drawLine(fromX: originX,
                     fromY: originY + CGFloat(i) * side,
                     toX: originX + CGFloat(cols) * side,
                     toY: originY + CGFloat(i) * side,
                     color: .gray)
        }
        
        // vertically draw some lines
        
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side,
                     fromY: originY,
                     toX: originX + CGFloat(i) * side,
                     toY: originY + CGFloat(rows) * side,
                     color: .gray)
        }
        
        // snake -> 🐍
        
//        for i in 0...cols - 1 {
//            drawRect(x: originX,
//                     y: originY + CGFloat(i) * side,
//                     width: side,
//                     height: side,
//                     color: .green)
//        }
        
//        snakesXYs[0]
        drawRect(x: snakeCells[0].x, y: snakeCells[0].y, width: side, height: side, color: headColor)
        drawRect(x: snakeCells[1].x, y: snakeCells[1].y, width: side, height: side, color: .green)
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor) {
        let line = UIBezierPath()
        line.move(to: CGPoint(x: fromX, y: fromY))
        line.addLine(to: CGPoint(x: toX, y: toY))
        color.setStroke()
        line.stroke()
    }
    
    func drawRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        let rect = CGRect(x: x, y: y, width: width, height: height)
        let rectangle = UIBezierPath(roundedRect: rect, cornerRadius: 5)
        color.setFill()
        rectangle.fill()
    }
}
