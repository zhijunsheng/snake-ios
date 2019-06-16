//
//  BoardView.swift
//  snake
//
//  Created by Elaine on 2019/5/12.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    override func draw(_ rect: CGRect) {
        
        let pencil = UIBezierPath()
        let originY:CGFloat = 130
        let originX:CGFloat = 100
        let cellSide:CGFloat = 20
        let cols:Int = 10
        let rows:Int = 15

        // 7 x 7  = 5 x 8
        for i in 0...rows {
            pencil.move(to: CGPoint(x: originX , y: originY + cellSide * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: originX + cellSide * CGFloat(cols) , y: originY + cellSide * CGFloat (i)) )
        }

        for i in 0...cols {
            pencil.move(to: CGPoint(x: originX + cellSide * CGFloat(i) , y: originY ))
            pencil.addLine(to: CGPoint(x: originX + cellSide * CGFloat (i)  , y: originY + cellSide * CGFloat(rows)) )
        }

        pencil.stroke()
    }
}
