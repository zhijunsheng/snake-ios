//
//  BoardView.swift
//  snake
//
//  Created by Sharon Chen on 2018-07-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        print(self)
        print(frame.width)
        print(frame.height)
        let rows = 18
        let cols = 10
        
        let side: CGFloat = 20
        
        let path = UIBezierPath()
        let originX = (frame.width - CGFloat(cols) * side) / 2
        let originY = (frame.height - CGFloat(rows) * side) / 2
        
        // horizontal
        
        for i in 0 ... rows {
            path.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * side))
            path.addLine(to: CGPoint(x: originX + CGFloat(cols) * side, y: originY + CGFloat(i) * side))
        }
        
        // vertical
        
        for i in 0 ... cols {
            path.move(to: CGPoint(x: originX + CGFloat(i) * side, y: originY ))
            path.addLine(to: CGPoint(x: originX + CGFloat(i) * side, y: originY + CGFloat(rows) * side))
        }
        
        path.stroke()
    }
}

