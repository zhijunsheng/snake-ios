//
//  SnakeView.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-15.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    
    let size: Int = 20
    let cell: CGFloat = 30
    let gx: CGFloat = 50
    let gy: CGFloat = 50

    override func draw(_ rect: CGRect) {
        // Drawing code

        let pencil = UIBezierPath()
        
        for i in 0 ... size {
            pencil.move(to: CGPoint(x: gx, y: gy + cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(size), y: gy + cell * CGFloat(i)))
        }
        
        for i in 0 ... size {
            pencil.move(to: CGPoint(x: gx + cell * CGFloat(i), y: gy  ))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy + cell * CGFloat(size) ))
        }
        
        pencil.stroke()
        
        
    }
     
     

}
