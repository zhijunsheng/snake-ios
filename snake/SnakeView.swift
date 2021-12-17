//
//  SnakeView.swift
//  snake
//
//  Created by Lambert Lin on 2021/12/10.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    let boardSize: Int = 9
    
    let cellSide: CGFloat = 49.2
    let originX: CGFloat = 100
    let originY: CGFloat = 100
    
    
    override func draw(_ rect: CGRect) {
        drawBoard()
    }
    
    func drawBoard() {
        let pencil = UIBezierPath()
        for i in 0..<boardSize + 1 {
            pencil.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originX))
            pencil.addLine(to: CGPoint(x:  originX + CGFloat(i) * cellSide, y: originX + CGFloat(boardSize) * cellSide))
            pencil.move(to: CGPoint(x:  originX, y: originY + CGFloat(i) * cellSide ))
            pencil.addLine(to: CGPoint(x:  originX + CGFloat(boardSize) * cellSide , y: originY + CGFloat(i) * cellSide ))
        }
        pencil.stroke()
    }
}
