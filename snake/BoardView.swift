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
    let cols:Int = 12
    let rows:Int = 17
    
//    var snakeCol:Int = 7
//    var snakeRow:Int = 4
//
//    var  snakeBody0Col: Int = 8
//    var snakeBody0Row: Int = 4
//
//    var  snakeBody1Col: Int = 9
//    var snakeBody1Row: Int = 4
//
//    var  snakeBody2Col: Int = 9
//    var snakeBody2Row: Int = 5
//
//    var  snakeBody3Col: Int = 9
//    var snakeBody3Row: Int = 6
    var snake: [Location] = [
        Location(x: 9, y: 6),
        Location(x: 9, y: 7),
        Location(x: 8, y: 7),
        Location(x: 7, y: 7),
        Location(x: 7, y: 8),
        Location(x: 7, y: 9),
        Location(x: 7, y: 10),
        // add 3 here
    ]
    
    override func draw(_ rect: CGRect) {
        drawBoard()
        for i in 0..<snake.count { // the count is the count, it's already  7, why adding 2?
            //okay
              let cell: Location = snake [i]
            let pencil = UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(cell.x) * cellSide, y: originY + CGFloat(cell.y) * cellSide, width: cellSide, height: cellSide), cornerRadius: 3)
            #colorLiteral(red: 1, green: 0, blue: 1, alpha: 1).setFill()
            pencil.fill()
          
        }
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
