//
//  GameView.swift
//  snake
//
//  Created by Angie Yan on 2019-11-18.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {
    let cellSide: CGFloat = 60
    let originX: CGFloat = 100
    let originY: CGFloat = 120
    let size: Int = 10
    var snakeY = 0
    var snakeX = 3

    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()

    }

    func drawSnake() {
        var snake: [SnakeCell] = []
        snake.append(SnakeCell(col: 3, row: 2))
        snake.append(SnakeCell(col: 4, row: 2))
        snake.append(SnakeCell(col: 5, row: 2))
        snake.append(SnakeCell(col: 6, row: 2))
        snake.append(SnakeCell(col: 7, row: 2))
        snake.append(SnakeCell(col: 8, row: 2))
        
        for i in 0..<snake.count {
            drawSnakeCell(col: snake[i].col, row: snake[i].row, colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
    }
    
    func drawSnakeCell(col: Int, row: Int, colour: UIColor) {
        let x = originX + cellSide / 2 + cellSide * CGFloat(col)
        let y = originY + cellSide / 2 + cellSide * CGFloat(row)
        let cell = UIBezierPath(arcCenter: CGPoint(x: x, y: y), radius: cellSide / 2, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1).setStroke()
        cell.lineWidth = 2
        cell.stroke()
        colour.setFill()
        cell.fill()
    }
    
    func drawGrid() {
        let pencil = UIBezierPath()
        // horizontal lines
        for i in 0..<size + 1 {
            pencil.move(to: CGPoint(x: originX, y: CGFloat(i) * cellSide + originY))
            pencil.addLine(to: CGPoint(x: originX + CGFloat(size) * cellSide, y: CGFloat(i) * cellSide + originY))
        }
        // vertical lines
        for i in 0..<size + 1 {
            pencil.move(to: CGPoint(x: CGFloat(i) * cellSide + originX, y: originY))
            pencil.addLine(to: CGPoint(x: CGFloat(i) * cellSide + originX, y: CGFloat(size) * cellSide + originY))
        }
        #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0).setStroke()
        pencil.stroke()
    }
}
