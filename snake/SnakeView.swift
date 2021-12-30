//
//  SnakeView.swift
//  snake
//
//  Created by Kenneth Wu on 2021-12-15.
//  Copyright © 2021 GoldThumb Inc. All rights reserved.
//

import UIKit

class SnakeView: UIView {
    
    let cell: CGFloat = 30
    let gx: CGFloat = 50
    let gy: CGFloat = 20
    
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
        for i in 0 ... SnakeGame.size {
            
            //horizontal lines
            pencil.move(to: CGPoint(x: gx, y: gy + cell * CGFloat(i)))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(SnakeGame.size), y: gy + cell * CGFloat(i)))
        
            //vertical lines
            pencil.move(to: CGPoint(x: gx + cell * CGFloat(i), y: gy  ))
            pencil.addLine(to: CGPoint(x: gx + cell * CGFloat(i), y: gy + cell * CGFloat(SnakeGame.size) ))
        }
        pencil.stroke()
    }
    
    func drawSnake() {
        
        for c in 0 ..< SnakeGame.size {
            for r in 0 ..< SnakeGame.size {
                let snakeCell = delegate?.snakeCellAt(col: c, row: r)
                
                if snakeCell != nil {
                    let snakecell = UIBezierPath(roundedRect: CGRect(x: gx + cell * CGFloat(c), y: gy + cell * CGFloat(r), width: cell, height: cell), cornerRadius: 8)
                    UIColor.green.setFill()
                    snakecell.fill()
                    snakecell.stroke()
                    
                }
            }
        }
    }
}
