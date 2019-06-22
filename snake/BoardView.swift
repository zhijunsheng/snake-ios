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
    
    var  snakeBody1Col: Int = 9
    var snakeBody1Row: Int = 4
    
    var  snakeBody2Col: Int = 9
    var snakeBody2Row: Int = 5
    
    var  snakeBody3Col: Int = 9
    var snakeBody3Row: Int = 6
    
    
    override func draw(_ rect: CGRect) {
        drawBoard()
       
        let pencil = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeCol) * cellSide, y: originY + CGFloat(snakeRow) * cellSide, width: cellSide, height: cellSide), cornerRadius: 3)
        #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1).setFill()
        pencil.fill()

        let pencil2 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeBody0Col) * cellSide, y: originY + CGFloat(snakeBody0Row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 2)
        #colorLiteral(red: 1, green: 0.9039442274, blue: 0.7955186632, alpha: 1).setFill()
        pencil2.fill()
    
        let pencil3 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeBody1Col) * cellSide, y: originY + CGFloat(snakeBody1Row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 2)
        #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).setFill()
        pencil3.fill()
        
        let pencil4 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeBody2Col) * cellSide, y: originY + CGFloat(snakeBody2Row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 2)
        #colorLiteral(red: 0, green: 0, blue: 0.80859375, alpha: 1).setFill()
        pencil4.fill()
        
        let pencil5 = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeBody3Col) * cellSide, y: originY + CGFloat(snakeBody3Row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 2)
        #colorLiteral(red: 1, green: 0, blue: 0.80859375, alpha: 1).setFill()
        pencil5.fill()
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
