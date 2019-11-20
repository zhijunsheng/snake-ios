//
//  GameView.swift
//  snake
//
//  Created by Angie Yan on 2019-11-18.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {
    override func draw(_ rect: CGRect) {
        
        // Horizontal Lines
        
        for i in 0..<15 {
            let pencil = UIBezierPath()
            pencil.move(to: CGPoint(x: 0, y: 40 * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: 600, y: 40 * CGFloat(i)))
            #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
            pencil.stroke()
        }
        
        // Vertical lines
        
        for i in 0..<15 {
            let pencil = UIBezierPath()
            pencil.move(to: CGPoint(x: 40 * CGFloat(i), y: 600))
            pencil.addLine(to: CGPoint(x: 40 * CGFloat(i), y: 0))
            #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
            pencil.stroke()
        }
    }
}
