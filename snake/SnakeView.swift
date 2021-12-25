//
//  SnakeView.swift
//  snake
//
//  Created by jichengye on 2021/12/24.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    //         0     1     2     3     4     5     6     7     8
    // binary  0000, 0001, 0010, 0011, 0100, 0101, 0110, 0111, 1000
    // 1: 0001
    // 2: 0010
    // 4: 0100
    // 8: 1000
    
    // 10 based
    // 100

    let gridSize: Int = 0o12
    let gridX: CGFloat = 80
    let gridY: CGFloat = 60
    let cellSide: CGFloat = 60
    
    override func draw(_ rect: CGRect) {
        let line = UIBezierPath()
        for i in 0 ..< gridSize + 1 {
            line.move(to: CGPoint(x: gridX, y: gridY + cellSide * CGFloat(i)))
            line.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(gridSize), y: gridY + cellSide * CGFloat(i)))
        }
        for i in 0 ..< gridSize + 1 {
            line.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            line.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY + cellSide * CGFloat( gridSize)))
        }
        line.stroke()
    }
    
    
}
