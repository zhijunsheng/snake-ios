//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let cellSide = 60
    
    var y = 500
    var x = 55
    
    
    override func draw(_ rect: CGRect) {
        
        drawGrid()
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: x + 50, y: y - 25), radius: 25, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil2.stroke()
        
    }
    
    func drawGrid() {
        let pencil = UIBezierPath()

        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: 80, y: 100 + i * cellSide))
            pencil.addLine(to: CGPoint(x: 80 + cellSide * 10, y: 100 + i * cellSide))
            
        }
        
        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: 80 + i * cellSide, y: 100))
            pencil.addLine(to: CGPoint(x: 80 + i * cellSide, y: 100 + cellSide * 10))
            
        }
        
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
        pencil.stroke()
        
    }
}
