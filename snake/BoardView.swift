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
    
    var rows = 0
    var cols = 0
    let side : CGFloat = 15
    let widthOflines: CGFloat = 0.5
    let originX : CGFloat = 15.0
    let originY : CGFloat = 15.0
    let darkGreen = UIColor(red: 0, green: 0.6, blue: 0, alpha: 1.0)
    
    override func draw(_ rect: CGRect) {
        drawSnakeCells(bodyColor: .green, outlineColor: darkGreen)
        drawFoodCells(color: .red)
        drawGrid(color: .lightGray)
    }

    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor){
        color.setStroke()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        path.lineWidth = widthOflines
        path.stroke()
    }
    
    func drawCells(color: UIColor, pointArray: [Point] ) {
        for i in pointArray {
            let rect = CGRect(x: CGFloat(i.col) * side + originX - side, y: CGFloat(i.row) * side + originY - side, width: side, height: side)
            let path3 = UIBezierPath(rect: rect)
//            path3.ad
            color.setFill()
            path3.fill()
        }
    }
    
    func drawCellOutline(cellTypeX: CGFloat, cellTypeY: CGFloat, color: UIColor){
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

    func drawGrid(color: UIColor){
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side, fromY: originY, toX: originX + CGFloat(i) * side, toY: originY + side * CGFloat(rows), color: color)
        }
        for i in 0...rows {
            drawLine(fromX: originX, fromY: originY + CGFloat(i) * side, toX: originX + side * CGFloat(cols), toY: originY + CGFloat(i) * side, color: color)
        }
    }
    
    private func drawSnakeCells(bodyColor: UIColor, outlineColor: UIColor){
        for _ in snakeCells {
            drawCells(color: bodyColor, pointArray: snakeCells)
        }
        for i in snakeCells {
            drawCellOutline(cellTypeX: CGFloat(i.col) * side + originX - side, cellTypeY: CGFloat(i.row) * side + originY - side, color: outlineColor)
        }
    }
    
    private func drawFoodCells(color: UIColor){
        drawCells(color: color, pointArray: foodCells)
    }
    
}
