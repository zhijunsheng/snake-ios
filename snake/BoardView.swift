//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    override func draw(_ rect: CGRect) {
        // 10 x 10 grid, better to think about using for loop
        
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 80, y: 100))
        pencil.addLine(to: CGPoint(x: 560, y: 100))
        
        pencil.move(to: CGPoint(x: 80, y: 100))
        pencil.addLine(to: CGPoint(x: 80, y: 500))
        
        pencil.move(to: CGPoint(x: 80, y: 500))
        pencil.addLine(to: CGPoint(x: 560, y: 500))
        
        pencil.move(to: CGPoint(x: 560, y: 500))
        pencil.addLine(to: CGPoint(x: 560, y: 100))
        
        pencil.move(to: CGPoint(x: 80, y: 140))
        pencil.addLine(to: CGPoint(x: 560, y: 140))
        
        pencil.move(to: CGPoint(x: 80, y: 180))
        pencil.addLine(to: CGPoint(x: 560, y: 180))
        
        pencil.move(to: CGPoint(x: 80, y: 220))
        pencil.addLine(to: CGPoint(x: 560, y: 220))
        
        pencil.move(to: CGPoint(x: 80, y: 260))
        pencil.addLine(to: CGPoint(x: 560, y: 260))
        
        pencil.move(to: CGPoint(x: 80, y: 300))
        pencil.addLine(to: CGPoint(x: 560, y: 300))
        
        pencil.move(to: CGPoint(x: 80, y: 340))
        pencil.addLine(to: CGPoint(x: 560, y: 340))
        
        pencil.move(to: CGPoint(x: 80, y: 380))
        pencil.addLine(to: CGPoint(x: 560, y: 380))
        
        pencil.move(to: CGPoint(x: 80, y: 420))
        pencil.addLine(to: CGPoint(x: 560, y: 420))
        
        pencil.move(to: CGPoint(x: 80, y: 460))
        pencil.addLine(to: CGPoint(x: 560, y: 460))
        
        pencil.move(to: CGPoint(x: 128, y: 100))
        pencil.addLine(to: CGPoint(x: 128, y: 500))
        
        pencil.move(to: CGPoint(x: 176, y: 100))
        pencil.addLine(to: CGPoint(x: 176, y: 500))
        
        pencil.move(to: CGPoint(x: 224, y: 100))
        pencil.addLine(to: CGPoint(x: 224, y: 500))
        
        pencil.move(to: CGPoint(x: 272, y: 100))
        pencil.addLine(to: CGPoint(x: 272, y: 500))
        
        pencil.move(to: CGPoint(x: 320, y: 100))
        pencil.addLine(to: CGPoint(x: 320, y: 500))
        
        pencil.move(to: CGPoint(x: 368, y: 100))
        pencil.addLine(to: CGPoint(x: 368, y: 500))
        
        pencil.move(to: CGPoint(x: 416, y: 100))
        pencil.addLine(to: CGPoint(x: 416, y: 500))
        
        pencil.move(to: CGPoint(x: 464, y: 100))
        pencil.addLine(to: CGPoint(x: 464, y: 500))
        
        pencil.move(to: CGPoint(x: 512, y: 100))
        pencil.addLine(to: CGPoint(x: 512, y: 500))
        
        pencil.stroke()
        
    }
    

}
