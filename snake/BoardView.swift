//
//  BoardView.swift
//  snake
//
//  Created by Peter Shi on 2018-07-19.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    override func draw(_ rect: CGRect) {
        print("hello world")
        
        let path = UIBezierPath()
        
        //        path.lineWidth = 2.5
        //        path.move(to: CGPoint(x: 100, y: 150))
        //        path.addLine(to: CGPoint(x: 200, y: 300))
        //        UIColor.blue.setStroke()
        //
        //        path.move(to: CGPoint(x: 200, y: 300))
        //        path.addLine(to: CGPoint(x: 225, y: 150))
        //
        //        path.stroke()
        
        let side = 20
        let originX = 50
        let originY = 80
        let cols = 15
        let rows = 15
        
        // vertical
        
        for i in 0...cols {
            path.move(to: CGPoint(x: originX + i * side, y: originY))
            path.addLine(to: CGPoint(x: originX + i * side, y: originY + cols * side))
        }
        
       // path.move(to: CGPoint)
        
        for i in 0...rows {
            path.move(to: CGPoint(x: originX, y: originY + i * side))
            path.addLine(to: CGPoint(x: originX + rows * side, y: originY + i * side))
        }
        
        path.lineWidth = 1
        UIColor.darkGray.setStroke()
        
        path.stroke()
    }
}
