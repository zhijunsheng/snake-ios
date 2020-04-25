//
//  GameView.swift
//  snake
//
//  Created by Angie Yan on 2019-11-18.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class GameView: UIView {
    let cellSide: CGFloat = 40
    let originX: CGFloat = 30
    let originY: CGFloat = 10
    let size: Int = 10
    var snakeY = 0

    override func draw(_ rect: CGRect) {
        drawGrid()
        drawSnake()
    }

    func drawSnake() {
        let cell = UIBezierPath(arcCenter: CGPoint(x: 360, y: 630), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1).setStroke()
        cell.lineWidth = 2
        cell.stroke()
        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setFill()
        cell.fill()
        
        //        let cell1 = UIBezierPath(arcCenter: CGPoint(x: 360, y: 570), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        //        #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1).setStroke()
        //        cell1.lineWidth = 2
        //        cell1.stroke()
        //        #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).setFill()
        //        cell1.fill()
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
