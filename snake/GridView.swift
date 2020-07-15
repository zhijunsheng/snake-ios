//
//  Grid.swift
//  snake
//
//  Created by Felix Lo on 2020/7/7.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class GridView: UIView {
    
    let gridNum: Int = 10
    
    let cell: CGFloat = 50
    let xStart: CGFloat = 100
    let yStart: CGFloat = 100
    
    var snakeCopy: [SnakeCell] = []
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
    }
    
    func drawGrid() {
        #colorLiteral(red: 0.5401437283, green: 0.5470389724, blue: 0.5468119979, alpha: 0.8094231592).setStroke()
        let path = UIBezierPath()
        for i in 0 ... gridNum {
            path.move(to: CGPoint(x: xStart, y: cell * CGFloat(i) + yStart))
            path.addLine(to: CGPoint(x: CGFloat(gridNum) * cell + xStart, y: cell * CGFloat(i) + yStart))
            
            path.move(to: CGPoint(x: cell * CGFloat(i) + xStart, y: yStart))
            path.addLine(to: CGPoint(x: cell * CGFloat(i) + xStart, y: CGFloat(gridNum) * cell + yStart))
        }
        path.stroke()
    }
    
    func drawSnakeCell(col: Int, row: Int) {
        #colorLiteral(red: 0, green: 0.6141374144, blue: 0.1721960616, alpha: 1).setFill()
        UIBezierPath(roundedRect: CGRect(x: xStart + cell * CGFloat(col), y: yStart + cell * CGFloat(row), width: cell, height: cell), cornerRadius: 15).fill()
    }
    
    func drawSnake() {
        for i in 0 ..< snakeCopy.count {
            let snakeCell = snakeCopy[i]
            drawSnakeCell(col: snakeCell.col, row: snakeCell.row)
        }
    }
}
