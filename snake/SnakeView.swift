//
//  SnakeView.swift
//  snake
//
//  Created by Lambert Lin on 2021/12/10.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
   

    let cellSide: CGFloat = 49.2
    let originX: CGFloat = 100
    let originY: CGFloat = 100
    
    
    override func draw(_ rect: CGRect) {
        drawBoard()
        let pencil = UIBezierPath(roundedRect: CGRect(x: originX + cellSide * 2, y: originY + cellSide, width: cellSide, height: cellSide), cornerRadius: 10)
        pencil.stroke()
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setFill()
        pencil.fill()
    }
    
    func drawBoard() {
        let pencil = UIBezierPath()
        for i in 0..<GameEngine.boardSize + 1 {
            pencil.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originX))
            pencil.addLine(to: CGPoint(x:  originX + CGFloat(i) * cellSide, y: originX + CGFloat(GameEngine.boardSize) * cellSide))
            pencil.move(to: CGPoint(x:  originX, y: originY + CGFloat(i) * cellSide ))
            pencil.addLine(to: CGPoint(x:  originX + CGFloat(GameEngine.boardSize) * cellSide , y: originY + CGFloat(i) * cellSide ))
        }
        pencil.stroke()
    }
}
