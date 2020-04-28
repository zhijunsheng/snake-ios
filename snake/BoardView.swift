//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let cellSide: CGFloat = 50
    let originX: CGFloat = 187
    let originY: CGFloat = 100
    
    
    var y: CGFloat = 500
    var x: CGFloat = 80

    
    
    override func draw(_ rect: CGRect) {
        
        drawGrid()
        drawSnake()
        
    }
    
    func drawGrid() {
        let pencil = UIBezierPath()

        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: originX + cellSide * 10, y: originY + CGFloat(i) * cellSide))
            
        }
        
        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            pencil.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + cellSide * 10))
            
        }
        
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
        pencil.stroke()
        
    }
    
    func drawSnake() {
        drawSnakeCell(col: 0, row: 0)
        
    }
    
    func drawSnakeCell(col: Int, row: Int) {
        let centerX: CGFloat = 80 + cellSide / 2
        let centerY: CGFloat = 100 + cellSide / 2
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: centerX, y: centerY), radius: CGFloat(cellSide / 2), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil2.stroke()
    }
}
