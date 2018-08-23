//
//  BoardView.swift
//  snake
//
//  Created by Kevin on 2018-08-20.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    override func draw(_ rect: CGRect) {
        
        //Below is the use of creating a line using a function
        /*
        drawLine(fromX: 0, fromY: 50, toX: 350, toY: 50, colour: .cyan)
        */
        
        //This one creates a box
        /*
        drawRect(upperLeftX: 100, upperLeftY: 100, width: 100, height: 100, outLineColour: .green, fillColour: .darkGray)
        */
 
 
        let WIDTH: CGFloat = 250
        let HEIGHT: CGFloat = 450
        let GRIDSIZE = 25
        let ROWS = (Int(HEIGHT)/GRIDSIZE)
        let COLLUMNS = (Int(WIDTH)/GRIDSIZE)
        for i in 0...ROWS {
            drawLine(fromX: 0, fromY: CGFloat(i*GRIDSIZE), toX: WIDTH, toY: CGFloat(i*GRIDSIZE), colour: .black)
        }
        
        for i in 0...COLLUMNS {
            drawLine(fromX: CGFloat(i*GRIDSIZE), fromY: 0, toX: CGFloat(i*GRIDSIZE), toY: HEIGHT, colour: .black)
        }
        
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, colour: UIColor) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        path.lineWidth = 1
        colour.setStroke()
        path.stroke()
    }
    
    func drawRect(upperLeftX: CGFloat, upperLeftY: CGFloat, width: CGFloat, height: CGFloat, outLineColour: UIColor, fillColour: UIColor) {
        let rect = CGRect(x: upperLeftX, y: upperLeftY, width: width, height: height)
        let path = UIBezierPath(rect: rect)
        fillColour.setFill()
        outLineColour.setStroke()
        path.lineWidth = 5
        path.stroke()
        path.fill()
    }

}
