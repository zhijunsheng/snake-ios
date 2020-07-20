//
//  Grid.swift
//  snake
//
//  Created by Felix Lo on 2020/7/7.
//  Copyright © 2020 GoldThumb Inc. All rights reserved.
//

import UIKit

class GridView: UIView {
   
   static let gridNum: Int = 10
   
    let cell: CGFloat = 50
    let xStart: CGFloat = 100
    let yStart: CGFloat = 100
   
    var snakeCopy: [SnakeCell] = []
    var fruitCopy: Fruit?
   
    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
   
   
        if let fruit = fruitCopy {
            drawFruitCopy(col: fruit.col, row: fruit.row)
        }
   
    }
    
    func drawGrid() {
        #colorLiteral(red: 0.5401437283, green: 0.5470389724, blue: 0.5468119979, alpha: 0.8094231592).setStroke()
        let path = UIBezierPath()
        for i in 0 ... GridView.gridNum {
            path.move(to: CGPoint(x: xStart, y: cell * CGFloat(i) + yStart))
            path.addLine(to: CGPoint(x: CGFloat(GridView.gridNum) * cell + xStart, y: cell * CGFloat(i) + yStart))
            
            path.move(to: CGPoint(x: cell * CGFloat(i) + xStart, y: yStart))
            path.addLine(to: CGPoint(x: cell * CGFloat(i) + xStart, y: CGFloat(GridView.gridNum) * cell + yStart))
        }
        path.stroke()
    }
    
    func drawSnakeCell(col: Int, row: Int, color: UIColor) {
        color.setFill()
        UIBezierPath(roundedRect: CGRect(x: xStart + cell * CGFloat(col), y: yStart + cell * CGFloat(row), width: cell, height: cell), cornerRadius: 15).fill()
    }
    
    func drawSnake() {
        let redRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let greenRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        let blueRandom: CGFloat = CGFloat(arc4random() % 1000)/1000
        
        let snakeCell = snakeCopy[0]
        drawSnakeCell(col: snakeCell.col, row: snakeCell.row, color: UIColor(red: redRandom, green: greenRandom, blue: blueRandom, alpha: 1))
        for i in 0 ..< snakeCopy.count - 1 {
            let snakeCell0 = snakeCopy[i + 1]
            drawSnakeCell(col: snakeCell0.col, row: snakeCell0.row, color: #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1))
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
        
        UIBezierPath(roundedRect: CGRect(x: xStart + cell * CGFloat(col), y: yStart + cell * CGFloat(row), width: cell, height: cell), cornerRadius: 15).fill()
    }
    
}
