//
//  BoardView.swift
//  snake
//
//  Created by Andy Yan on 2019-11-19.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    let cellSide: CGFloat = 50
    let originX: CGFloat = 100
    let originY: CGFloat = 100
    
    var snakeCol: Int = 5
    var snakeRow: Int = 5

    override func draw(_ rect: CGRect) {        
        drawGrid()
        drawSnake()
        
        // array ?
        let intArr: [Int] = [18, 0, -12, 9, 0, 122, 27]
        let first = intArr[0]
        let second = intArr[1]
        let third = intArr[2]
//        let last = intArr("\()")
        
        print("\(first)")
        print("\(second)")
        print("\(third)")
//        print("\(last)")
        print("\(intArr.count)")
    }
    
    func drawGrid() {
        let pencil = UIBezierPath()

        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            pencil.addLine(to: CGPoint(x: originX + cellSide * 10, y: originY + CGFloat(i) * cellSide))
            
        }
        
        for i in 0 ... 10 {
            pencil.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            pencil.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + cellSide * 10))
        }
        
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
        pencil.stroke()
    }
    
    func drawSnake() {
        
        drawSnakeCell(col: snakeCol, row: snakeRow)
//        drawSnakeCell(col: 3, row: 3)
//        drawSnakeCell(col: 4, row: 3)
//        drawSnakeCell(col: 4, row: 4)
//        drawSnakeCell(col: 5, row: 4)
    }
    
    func drawSnakeCell(col: Int, row: Int) {
        let x: CGFloat = originX + cellSide / 2 + cellSide * CGFloat(col)
        let y: CGFloat = originY + cellSide / 2 + cellSide * CGFloat(row)
        
        let pencil2 = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: CGFloat(cellSide / 2), startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil2.stroke()
    }
}
