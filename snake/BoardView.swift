//
//  BoardView.swift
//  snake
//
//  Created by Bowen Lin on 2018-07-22.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class BoardView: UIView {

    
    let widthOflines: CGFloat = 8.0
    override func draw(_ rect: CGRect) {
        
        let rows = 19
        let cols = 10
        let originX : CGFloat = 50.0
        let originY : CGFloat = 40.0
        let side : CGFloat = 30
        var snakeCells = [Point]()
        let cell1 = Point(row: 4, col: 6)
        let cell2 = Point(row: 4, col: 5)
        let cell3 = Point(row: 5, col: 5)
        let cell4 = Point(row: 5, col: 4)
        snakeCells = [cell1, cell2, cell3, cell4]
         var rect = CGRect()
        
        let path = UIBezierPath()
        path.lineWidth = CGFloat(widthOflines)
        UIColor.black.setStroke()
        //verticle
        print(self.frame.width)
        print(self.frame.height)
        for i in 0...cols {
            drawLine(fromX: originX + CGFloat(i) * side, fromY: originY, toX: originX + CGFloat(i) * side, toY: originY + side * CGFloat(rows), color: .blue)
        }
        //horizontal
        for i in 0...rows {

            drawLine(fromX: originX, fromY: originY + CGFloat(i) * side, toX: originX + side * CGFloat(cols), toY: originY + CGFloat(i) * side, color: .blue)
        }
        
        path.stroke()
        
//         for snake cells
        
        UIColor.green.setFill()
        let darkGreen = UIColor(red: 0, green: 0.6, blue: 0, alpha: 1.0)
        let path2 = UIBezierPath()
        path2.lineWidth = widthOflines
        darkGreen.setStroke()
       
        
        func printSnakeCell(cellTypeX: CGFloat, cellTypeY: CGFloat) {

            for i in snakeCells {
                let path3 = UIBezierPath(rect: rect)
                UIColor.green.setFill()
                rect = CGRect(x: CGFloat(i.col) * side + originX - side, y: CGFloat(i.row) * side + originY - side, width: side, height: side)
                path3.fill()
            }
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
        
        for i in snakeCells {
            printSnakeCell(cellTypeX: CGFloat(i.col) * side + originX - side, cellTypeY: CGFloat(i.row) * side + originY - side)
        }
    }
    
    func drawLine(fromX: CGFloat, fromY: CGFloat, toX: CGFloat, toY: CGFloat, color: UIColor){
        color.setStroke()
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: fromX, y: fromY))
        path4.addLine(to: CGPoint(x: toX, y: toY))
        path4.lineWidth = widthOflines
        path4.stroke()
    }
}
