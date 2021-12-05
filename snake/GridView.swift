//
//  Grid.swift
//  snake
//
//  Created by Felix Lo on 2020/7/7.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class GridView: UIView {
    
    
    
    var cell: CGFloat = 0
    var xStart: CGFloat = 0
    var yStart: CGFloat = 0
    let ratio: CGFloat = 0.9
   
    var snakeCopy: [SnakeCell] = []
    var fruitCopy: Fruit?
   
    override func draw(_ rect: CGRect) {
        let gridWidth = bounds.width * ratio
        let gridHeight = bounds.height * ratio
        xStart = (bounds.width - gridWidth)/2
        yStart = (bounds.height - gridHeight)/2
        
        cell = gridWidth / CGFloat(SnakeGame.gridNum)
        drawGrid()
        drawSnake()
   
   
        if let fruit = fruitCopy {
            drawFruitCopy(col: fruit.col, row: fruit.row)
        }
   
    }
    
    func drawGrid() {
        #colorLiteral(red: 0.5401437283, green: 0.5470389724, blue: 0.5468119979, alpha: 0.8094231592).setStroke()
        let path = UIBezierPath()
        for i in 0 ... SnakeGame.gridNum {
            path.move(to: CGPoint(x: xStart, y: cell * CGFloat(i) + yStart))
            path.addLine(to: CGPoint(x: CGFloat(SnakeGame.gridNum) * cell + xStart, y: cell * CGFloat(i) + yStart))
            
            path.move(to: CGPoint(x: cell * CGFloat(i) + xStart, y: yStart))
            path.addLine(to: CGPoint(x: cell * CGFloat(i) + xStart, y: CGFloat(SnakeGame.gridNum) * cell + yStart))
        }
        path.stroke()
    }
    
    func drawSnakeCell(col: Int, row: Int, color: UIColor) {
        color.setFill()
        UIBezierPath(roundedRect: CGRect(x: xStart + cell * CGFloat(col), y: yStart + cell * CGFloat(row), width: cell, height: cell), cornerRadius: cell * 0.2).fill()
    }
    
    func drawSnake() {
        let redRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let greenRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let blueRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        
        let snakeCell = snakeCopy[0]
        drawSnakeCell(col: snakeCell.col, row: snakeCell.row, color: UIColor(red: redRandom, green: greenRandom, blue: blueRandom, alpha: 1))
        for i in 0 ..< snakeCopy.count - 1 {
            let snakeCell0 = snakeCopy[i + 1]
            drawSnakeCell(col: snakeCell0.col, row: snakeCell0.row, color: UIColor.green)
        }
    }
    
    func drawFruitCopy(col: Int, row: Int) {
        let redRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let greenRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let blueRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        
        let red: CGFloat = redRandom
        let green: CGFloat = greenRandom
        let blue: CGFloat = blueRandom
        
        let randomColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        randomColor.setFill()
        
        UIBezierPath(roundedRect: CGRect(x: xStart + cell * CGFloat(col), y: yStart + cell * CGFloat(row), width: cell, height: cell), cornerRadius: cell * 0.2).fill()
    }
    
}
