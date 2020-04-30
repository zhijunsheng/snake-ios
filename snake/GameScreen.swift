//
//  gameScreen.swift
//  snake
//
//  Created by Grace Huang on 4/19/20.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameScreen: UIView {
    var snakeCell = SnakeCell(col: 10, row: 10)
    var snakeShadow: [SnakeCell] = []

    override func draw(_ rect: CGRect) {
        drawGrid()
        
        
        drawSnake()
    }
    
    func drawSnake() {
        for i in 0..<snakeShadow.count {
            babySnake(cell: snakeShadow[i])
        }
    }
    
    func drawGrid() {
        let pen = UIBezierPath()
        let squareSide = bounds.width / 20
        
        for i in 0..<25 {
            pen.move(to: CGPoint(x: CGFloat(i) * squareSide, y: 0))
            pen.addLine(to: CGPoint(x: CGFloat(i) * squareSide, y: bounds.height))
            
            pen.move(to: CGPoint(x: 0, y: CGFloat(i) * squareSide))
            pen.addLine(to: CGPoint(x: bounds.width, y: CGFloat(i) * squareSide))
            
        }
        #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).setStroke()
        pen.stroke()
    }
    
    func babySnake(cell: SnakeCell) {
        let col = cell.col
        let row = cell.row
        let squareSide = bounds.width / 20
        
        let head = UIBezierPath(rect: CGRect(x: CGFloat(col) * squareSide, y: CGFloat(row) * squareSide, width: squareSide, height: squareSide))
        
        #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
        head.fill()
        
    }
    
}
