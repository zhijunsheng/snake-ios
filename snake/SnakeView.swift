//
//  SnakeView.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-15.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    
    let cell: CGFloat = 15
    let gx: CGFloat = 5
    let gy: CGFloat = 5
    
    var delegate: SnakeDelegate? = nil
    let fruits: [String] = ["🍓", "🍒", "🍇", "🍎", "🍉", ]
    
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
        drawFruit()
    }
    
    func drawFruit() {
        guard let fruit = delegate?.currentFruit() else { return }
        
        let attributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: cell - 2)
        ]
        
        let apple = NSAttributedString(string: fruits[fruit.fruitIndex], attributes: attributes)
        apple.draw(in: CGRect(x: gx + cell * CGFloat(fruit.col) , y:  gy + cell * CGFloat(fruit.row), width: cell , height: cell ))

    }
    
    
    func drawGrid() {
        let pencil = UIBezierPath()
        for i in 0 ... SnakeGame.rows {
            
            //horizontal lines
            pencil.move(to: CGPoint(x: gx, y: gy + cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(SnakeGame.cols), y: gy + cell * CGFloat(i)))
        }
        
        for i in 0 ... SnakeGame.cols {
            //vertical lines
            pencil.move(to: CGPoint(x: gx + cell * CGFloat(i), y: gy  ))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy + cell * CGFloat(SnakeGame.rows) ))
        }
        pencil.stroke()
    }
    
    func drawSnake() {
        
        for c in 0 ..< SnakeGame.cols {
            for r in 0 ..< SnakeGame.rows {
                let snakeCell = delegate?.snakeCellAt(col: c, row: r)
                
                if snakeCell != nil {
                    let snakecell = UIBezierPath(roundedRect: CGRect(x: gx + cell * CGFloat(c), y: gy + cell * CGFloat(r), width: cell, height: cell), cornerRadius: cell * 0.327)
                    UIColor.green.setFill()
                    snakecell.fill()
                    snakecell.stroke()
                    
                }
            }
        }
    }
}
