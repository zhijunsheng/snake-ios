//
//  SnakeView.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-15.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    
    let cell: CGFloat = 30
    let gx: CGFloat = 50
    let gy: CGFloat = 20

    override func draw(_ rect: CGRect) {
        // Drawing code

        let pencil = UIBezierPath()
        
        for i in 0 ... SnakeGame.size {
            pencil.move(to: CGPoint(x: gx, y: gy + cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(SnakeGame.size), y: gy + cell * CGFloat(i)))
        }
        
        for i in 0 ... SnakeGame.size {
            pencil.move(to: CGPoint(x: gx + cell * CGFloat(i), y: gy  ))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy + cell * CGFloat(SnakeGame.size) ))
        }
        
        pencil.stroke()
        
        let snakecell = UIBezierPath(roundedRect: CGRect(x: gx + cell * 2, y: gy + cell * 1, width: cell, height: cell), cornerRadius: 8)
        UIColor.green.setFill()
        snakecell.fill()
        snakecell.stroke()
        
        
        
    }
     
     

}
