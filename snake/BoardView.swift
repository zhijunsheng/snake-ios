//
//  BoardView.swift
//  snake
//
//  Created by Elaine on 2019/5/12.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    let originX:CGFloat = 50
    let originY:CGFloat = 80
    let cellSide:CGFloat = 20
    let cols:Int = 10
    let rows:Int = 15
    
    var snakeCol:Int = 7
    var snakeRow:Int = 4
    
    var  snakeBody0Col: Int = 8
    var snakeBody0Row: Int = 4 
    
    
    
    override func draw(_ rect: CGRect) {
        drawBoard()
       
        let pencil = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeCol) * cellSide, y: originY + CGFloat(snakeRow) * cellSide, width: cellSide, height: cellSide), cornerRadius: 3)
        #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1).setFill()
        pencil.fill()

        let pencil2 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeBody0Col) * cellSide, y: originY + CGFloat(snakeBody0Row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 2)
        #colorLiteral(red: 1, green: 0.9039442274, blue: 0.7955186632, alpha: 1).setFill()
        pencil2.fill()
    
    }
    
    func drawBoard() {
        let pencil = UIBezierPath()
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
