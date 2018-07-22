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
        
        let path = UIBezierPath()
        
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
        
        // snake -> 🐍
        
        let cell00 = CGRect(x: originX, y: originY, width: side, height: side)
        let pathCell00 = UIBezierPath(roundedRect: cell00, cornerRadius: 6)
        UIColor.red.setFill()
        pathCell00.fill()
        
        let cell01 = CGRect(x: originX, y: originY + side, width: side, height: side)
        let pathCell01 = UIBezierPath(roundedRect: cell01, cornerRadius: 6)
        UIColor.orange.setFill()
        pathCell01.fill()
        
        let cell02 = CGRect(x: originX, y: originY + 2 * side, width: side, height: side)
        let pathCell02 = UIBezierPath(roundedRect: cell02, cornerRadius: 6)
        UIColor.yellow.setFill()
        pathCell02.fill()
    }
}
