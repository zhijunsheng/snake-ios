//
//  BoardView.swift
//  snake
//
//  Created by Nicole Han on 2018-01-29.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    var gridTopLeft = CGPoint(x: 0.0, y: 0.0)
    var gridWidth = 0
    var gridHeight = 0
    var cellSide: CGFloat = 0.0
    var snake = [CGPoint]()
    var food = [CGPoint]()
    
    override func draw(_ rect: CGRect) {
        
        drawBoard()
        drawSnake()
        drawFood()
    }

    func drawBoard() {

        for i in 0...gridHeight {
            drawLine(withColor: .gray,
                     fromX: gridTopLeft.x,
                     fromY: gridTopLeft.y + CGFloat(i) * cellSide,
                     toX: gridTopLeft.x + CGFloat(gridWidth) * cellSide,
                     toY: gridTopLeft.y + CGFloat(i) * cellSide)
        }
        
        for i in 0...gridWidth {
            drawLine(withColor: .gray,
                     fromX: gridTopLeft.x + CGFloat(i) * cellSide,
                     fromY: gridTopLeft.y,
                     toX: gridTopLeft.x + CGFloat(i) * cellSide,
                     toY: gridTopLeft.y + CGFloat(gridHeight) * cellSide)
        }
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
        for (index, point) in snake.enumerated() {
           if index == 0 {
                drawRoundSquare(withColor: .orange, x: point.x, y: point.y)
           } else {
                drawRoundSquare(withColor: .blue, x: point.x, y: point.y)
            }
        }
    }
    
    func drawFood() {
        for point in food {
            drawCircle(x: point.x - cellSide * 0.5, y: point.y + cellSide * 0.5)
        }
    }
    
    func drawRoundSquare(withColor color: UIColor, x: CGFloat, y: CGFloat) {
        let cellRect = CGRect(x: x, y: y, width: cellSide, height: cellSide)
        let path = UIBezierPath(roundedRect: cellRect, cornerRadius: cellSide * 0.3)
        color.setStroke()
        color.setFill()
        path.stroke()
        path.fill()
    }
    
    func drawCircle(x: CGFloat, y: CGFloat) {
        let circleRadius = cellSide * 0.4
        let path = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: circleRadius, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        let color = UIColor.red
        color.setFill()
        color.setStroke()
        path.fill()
        path.stroke()
    }
}
