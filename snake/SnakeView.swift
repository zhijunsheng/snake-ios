//
//  SnakeView.swift
//  snake
//
//  Created by jichengye on 2021/12/24.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    
    var delegate: SnakeDelegate?
    
    let gridX: CGFloat = 80
    let gridY: CGFloat = 60
    let cellSide: CGFloat = 30
    override func draw(_ rect: CGRect) {
        drawBoard()
        drawSnake()
    }
    
    func drawSnake() {
        guard let delegate = delegate else { return }
        UIColor.red.setFill()
        for r in 0 ..< SnakeGame.gridSize {
            for c in 0 ..< SnakeGame.gridSize {
                if delegate.isOnSnake(col: c, row: r) {
                    let line = UIBezierPath(roundedRect: CGRect(x: gridX + cellSide * CGFloat(c), y: gridY + cellSide * CGFloat(r), width: cellSide, height: cellSide), cornerRadius: cellSide * 0.3 )
                    line.fill()
                    line.stroke()
                }
            }
        }
    }
    
    func drawBoard() {
        let line = UIBezierPath()
        for i in 0 ..< SnakeGame.gridSize + 1 {
            line.move(to: CGPoint(x: gridX, y: gridY + cellSide * CGFloat(i)))
            line.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(SnakeGame.gridSize), y: gridY + cellSide * CGFloat(i)))
        }
        for i in 0 ..< SnakeGame.gridSize + 1 {
            line.move(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY))
            line.addLine(to: CGPoint(x: gridX + cellSide * CGFloat(i), y: gridY + cellSide * CGFloat(SnakeGame.gridSize)))
        }
        line.stroke()
    }
}
