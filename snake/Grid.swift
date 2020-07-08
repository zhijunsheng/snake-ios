//
//  Grid.swift
//  snake
//
//  Created by Felix Lo on 2020/7/7.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class Grid: UIView {
    
    let gridNum: Int = 10
    
    let cell: CGFloat = 50
    let xStart: CGFloat = 100
    let yStart: CGFloat = 100
    
    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    
    func drawGrid() {
        let path = UIBezierPath()
        for i in 0 ... gridNum {
            path.move(to: CGPoint(x: xStart, y: cell * CGFloat(i) + yStart))
            path.addLine(to: CGPoint(x: CGFloat(gridNum) * cell + xStart, y: cell * CGFloat(i) + yStart))
            
            path.move(to: CGPoint(x: cell * CGFloat(i) + xStart, y: yStart))
            path.addLine(to: CGPoint(x: cell * CGFloat(i) + xStart, y: CGFloat(gridNum) * cell + yStart))
        }
        path.stroke()
    }
}
