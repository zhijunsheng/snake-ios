//
//  GameView.swift
//  snake
//
//  Created by Angie Yan on 2019-11-18.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {
    let hLineY = 60
    let hLineX = 600
    
    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        // Horizontal Lines
        
        pencil.move(to: CGPoint(x: 0, y: hLineY))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 2))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 2))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 3))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 3))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 4))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 4))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 5))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 5))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 6))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 6))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 7))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 7))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 8))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 8))
        
        pencil.move(to: CGPoint(x: 0, y: hLineY * 9))
        pencil.addLine(to: CGPoint(x: hLineX, y: hLineY * 9))
        
        
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        pencil.stroke()
        
        

        
        // Vertical lines
        
       
    }
}
