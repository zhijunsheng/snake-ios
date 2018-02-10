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
//        drawSquare(withColor: .red, x: 10.0, y: 10.0)
        
        
        // since we already have an array of CGPoint, i.e.  snake
        // we can draw them with a loop
    }
    
    func drawFood() {
        print("inside drawFood")
    }
    
    func drawSquare(withColor color: UIColor, x: CGFloat, y: CGFloat) {
        let cellRect = CGRect(x: x, y: y, width: cellSide, height: cellSide)
        let path = UIBezierPath(rect: cellRect)
        color.setStroke()
        color.setFill()
        path.stroke()
        path.fill()
    }
}
