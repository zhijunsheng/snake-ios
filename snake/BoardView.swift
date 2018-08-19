//
//  BoardView.swift
//  snake
//
//  Created by Peter Shi on 2018-07-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    var cols = 0
    var rows = 0 // hi
    
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
    
    var originX: CGFloat = 0.0
    var originY: CGFloat = 0.0
    
    
    override func draw(_ rect: CGRect) {
        originX = (frame.width -  side * CGFloat(cols)) / 2
        originY = (frame.height - side * CGFloat(rows)) / 3
        
        //        snake = [Point(row: 15, col: 1),
        //                 Point(row: 15, col: 2),
        //        ]
        
        //        snakeCells = [CGPoint(x: originX, y: originY),
        //                     CGPoint(x: originX + side, y: originY),
        //                     //        CGPoint(x: 20.0, y: 20.0),
        //            //        CGPoint(x: 20.0, y: 20.0),
        //        ]
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
        
        let rect = CGRect(x: 20.0, y: 20.0, width: side, height: side)
        let rectangle = UIBezierPath(roundedRect: rect, cornerRadius: side * 2)
        UIColor.red.setFill()
        rectangle.fill()
        
        // snake -> 🐍
        
        for i in snakeCells.indices {
            drawRect(x: snakeCells[i].x, y: snakeCells[i].y, width: side, height: side, color: headColor)
        }
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

