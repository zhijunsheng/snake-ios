//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    var y = 500
    var x = 5
    
    
    override func draw(_ rect: CGRect) {
        
        drawGrid()
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: 105, y: y - 25), radius: 25, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil2.stroke()
        
    }
    
    func drawGrid() {
        let pencil = UIBezierPath()

        for i in 0 ... 9 {
            pencil.move(to: CGPoint(x: 80, y: 100 + i * 50))
            pencil.addLine(to: CGPoint(x: 530, y: 100 + i * 50))
            
        }
        
        for i in 0 ... 9 {
            pencil.move(to: CGPoint(x: 80 + i * 50, y: 100))
            pencil.addLine(to: CGPoint(x: 80 + i * 50, y: 550))
            
        }
        
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
        pencil.stroke()
        
    }
}
