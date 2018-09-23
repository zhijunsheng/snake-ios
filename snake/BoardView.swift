//
//  BoardView.swift
//  snake
//
//  Created by Bowen Lin on 2018-07-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//
import UIKit

class BoardView: UIView {
    
    var snakeCells = [Point]()
    var foodCells = [Point]()
    
    let board = Board()
    let rows = 35
    let cols = 20
    let side : CGFloat = 15
    let widthOflines: CGFloat = 4.0
    let originX : CGFloat = 10.0
    let originY : CGFloat = 10.0
    let darkGreen = UIColor(red: 0, green: 0.6, blue: 0, alpha: 1.0)
    
    override func draw(_ rect: CGRect) {
        
        //verticle grid lines
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side, fromY: originY, toX: originX + CGFloat(i) * side, toY: originY + side * CGFloat(rows), color: .blue)
        }
        //horizontal grid lines
        for i in 0...rows {
            
            drawLine(fromX: originX, fromY: originY + CGFloat(i) * side, toX: originX + side * CGFloat(cols), toY: originY + CGFloat(i) * side, color: .blue)
        }
        
        //for snake cells
        for _ in snakeCells {
            drawSnakeCells(color: .green)
        }
        
        for i in snakeCells {
            drawSnakeOutline(cellTypeX: CGFloat(i.col) * side + originX - side, cellTypeY: CGFloat(i.row) * side + originY - side, color: darkGreen)
        }
    }

    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor){
        color.setStroke()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        path.lineWidth = widthOflines
        path.stroke()
    }
    
    func drawRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        var rect = CGRect()
        let path3 = UIBezierPath(rect: rect)
        color.setFill()
        rect = CGRect(x: x, y: y, width: width, height: height)
        path3.fill()
    }
    
    func drawSnakeCells(color: UIColor) {
        for i in snakeCells {
            let rect = CGRect(x: CGFloat(i.col) * side + originX - side, y: CGFloat(i.row) * side + originY - side, width: side, height: side)
            let path3 = UIBezierPath(rect: rect)
            color.setFill()
            path3.fill()
        }
    }
    
    func drawSnakeOutline(cellTypeX: CGFloat, cellTypeY: CGFloat, color: UIColor){
        let path2 = UIBezierPath()
        path2.lineWidth = widthOflines
        color.setStroke()
        
        path2.move(to: CGPoint(x: cellTypeX, y: cellTypeY))
        path2.addLine(to: CGPoint(x: cellTypeX + side, y: cellTypeY))
        path2.move(to: CGPoint(x: cellTypeX + side, y: cellTypeY))
        path2.addLine(to: CGPoint(x: cellTypeX + side, y: cellTypeY + side))
        path2.move(to: CGPoint(x: cellTypeX + side, y: cellTypeY + side))
        path2.addLine(to: CGPoint(x: cellTypeX, y: cellTypeY + side))
        path2.move(to: CGPoint(x: cellTypeX, y: cellTypeY + side))
        path2.addLine(to: CGPoint(x: cellTypeX, y: cellTypeY))
        path2.stroke()
    }
}
